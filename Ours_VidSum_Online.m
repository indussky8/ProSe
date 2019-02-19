clc,clear
%% generate data
%  load('vgg19fc7Feature.mat')
%  xp1 = featuremat;
%  [u,s,v] = svd(xp1',0);
% xp = u(:,1:256)';
% B = xp;
 load('B_256.mat')
 %load('sInd_00000600.mat')
 B1 = B(:,1:600);
 b1 = B1(:,[62,276,525,549,458]);
 B2 = B(:,601:1200);
 b2 = [b1,B2];
 b = b2(:,[68,12,268,245,354]);
 B3 = B(:,1201:1800);
 b3 = B3(:, [318   373   426   339   212]);
 B4 = B(:,1801:2400);
 b4 = B4(:,[172,428,113,159,99]-15);
 B5 = B(:,2401:3000);
 b5 = B5(:,[579,537,484,454,607]-20);
 B6 = B(:,3001:3600);
 b6 = B6(:,[308,185,53,284,168]-25);
 B7 = B(:,3601:4300);
 B = [b1,b,b3,b4,b5,b6,B7];
 
%% initialize X
alpha_X = 0.09;
maxIter = 100;
[~, X] = GroupSparsity_FISTA(B, alpha_X,maxIter,1*10^-5);
%plot(f_value);%%

%%all initialize
maxIter = 6;
terminate = false;
k = 1;
f_value(k) = 10^6;
errThr = 10^-4;
     
%% DS3 initialize
 alpha_Z = 8;%%%%
 method = 'd';
    
%% SSDS initialize
    opts.maxIter_FISTA = 10;      % # max iterations for FISTA
    opts.maxIter_Dykatra = 6;     % # max iterations for Dykatra
    opts.thr_Dykatra = 1 * 10^-5; % tolerance between Dykatra iterations
    opts.thr_FISTA = 1 * 10^-5;   % tolerance between FISTA iterations
    alpha = 20;%%%%
    param.alpha_l1l2 = alpha; % hyper-parameter for row sparsity        
    param.alpha_row  = alpha; % hyper-parameter for diversity%%%%
    param.alpha_col  = alpha; % hyper-parameter for locality-sensitivity
    
    addpath SSDS_PR17-master
    BTB = B'*B; LipC = norm(BTB,'fro'); 
    cal_lambda = computeLambda_mat(B,true);
    coeff = cal_lambda/LipC;
    param.lambda_l1l2 = coeff/param.alpha_l1l2;
    param.lambda_row = 0;%coeff/param.alpha_row;%%%%hyper-parameter for diversity
    param.lambda_col = coeff/param.alpha_col;
    rmpath SSDS_PR17-master

%% compute Z X
while (~terminate)
    D = compute_D(X);
    %compute Z
    D1 = D(:,31:end);%%%%%%%%%%%%%%%%%%
    Z = ds3(D1,alpha_Z,method);
    Z = Z*0.0001;
    Z = [zeros(730,30),Z]; %%%%%%%%%%%%%%%%%%%%   
    %compute X
    addpath SSDS_PR17-master
    X1 = SSDS(B, Z, param, opts);
    rmpath SSDS_PR17-master
    %comoute f_value
     f_value(k+1) = norm(B-B*X,'fro')^2+param.lambda_l1l2*Norm_12(X)+param.lambda_col*trace(D*Z);
    %compute error
     err1 = errorCoef(X,X1);
     err2 = f_value(k+1)-f_value(k);
     if ( k >= maxIter || (err1 <= errThr && err2 <= errThr) )
         terminate = true;
     else
         k = k + 1;
     end
    X = X1;
end


%% find representatives and clustering
sInd = findRepresentatives(Z);

