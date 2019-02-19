clc,clear
%% generate data
% randn('state',111)
% rand('state',111)
Ng = 1000; % number of points in each group
B = [randn(2,Ng)+repmat([-5;0],1,Ng) randn(2,Ng)+repmat([5;0],1,Ng) randn(2,Ng)+repmat([0;5],1,Ng)]; % source set,2*105
% save('B.mat','B')
%%load('B.mat','B')
% % load('2moons.mat')
% load('B_Moon_noisy.mat')
% B = B_Moon_noisy(:,1:260);
%% initialize X
alpha_X = 0.09;
maxIter = 3;
[~, X] = GroupSparsity_FISTA(B, alpha_X,maxIter,1*10^-5);
%plot(f_value);%%

%%all initialize
maxIter = 3;
terminate = false;
k = 1;
f_value(k) = 0;
errThr = 10^-4;
     
%% DS3 initialize
    alpha_Z = 3;%%%%
    method = 'c';
    
%% SSDS initialize
    opts.maxIter_FISTA = 10;      % # max iterations for FISTA
    opts.maxIter_Dykatra = 5;     % # max iterations for Dykatra
    opts.thr_Dykatra = 1 * 10^-5; % tolerance between Dykatra iterations
    opts.thr_FISTA = 1 * 10^-5;   % tolerance between FISTA iterations
    alpha = 10;%%%%
    param.alpha_l1l2 = alpha; % hyper-parameter for row sparsity        
    param.alpha_row  = alpha; % hyper-parameter for diversity%%%%
    param.alpha_col  = alpha; % hyper-parameter for locality-sensitivity
    
    addpath SSDS_PR17-master_v1
    BTB = B'*B; LipC = norm(BTB,'fro'); 
    cal_lambda = computeLambda_mat(B,true);
    coeff = cal_lambda/LipC;
    param.lambda_l1l2 = coeff/param.alpha_l1l2;
    param.lambda_row = 0;%coeff/param.alpha_row;%%%%hyper-parameter for diversity
    param.lambda_col = coeff/param.alpha_col;
    rmpath SSDS_PR17-master

%% compute Z X
tic
while (~terminate)
    D = compute_D(X);
    %compute Z
    Z = ds3(D,alpha_Z,method);
     load('Z_3000.mat')
    Z = Z*0.001;%Z*0.0001;
    %compute X
    addpath SSDS_PR17-master_v1
    X1 = SSDS(B, Z, param, opts);
    rmpath SSDS_PR17-master
    %comoute f_value
     %%f_value(k+1) = norm(B-B*X,'fro')^2+param.lambda_l1l2*Norm_12(X)+param.lambda_col*trace(D*Z./0.0001);
    %compute error
     err1 = errorCoef(X,X1);
     %%err2 = f_value(k+1)-f_value(k);
%      if ( k >= maxIter || (err1 <= errThr && err2 <= errThr) )
     if ( k >= maxIter || err1 <= errThr  )
         terminate = true;
     else
         k = k + 1;
     end
    X = X1;
end
toc

%% find representatives and clustering
sInd = findRepresentatives(Z);
[clusters,clusterCenters] = findClustering(Z,sInd);
% plotting the results
plot_results(B,B,Z,sInd)
    




