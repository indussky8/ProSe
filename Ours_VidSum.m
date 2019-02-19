clc,clear
%% generate data
%  load('vgg19fc7Feature.mat')
%  xp1 = featuremat;
%  [u,s,v] = svd(xp1',0);
% xp = u(:,1:256)';
% B = xp;
 load('B_256.mat')
%  B = B(:,3001:end);
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
 alpha_Z = 30;%%%%
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
    Z = ds3(D,alpha_Z,method);
    Z = Z*0.0001;
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

    




