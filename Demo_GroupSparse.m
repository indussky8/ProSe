%%The first method
% clc,clear
% 
% %%generate data
% randn('state',111)
% rand('state',111)
% Ng = 35; % number of points in each group
% X = [randn(2,Ng)+repmat([-5;0],1,Ng) randn(2,Ng)+repmat([5;0],1,Ng) randn(2,Ng)+repmat([0;5],1,Ng)]; % source set,2*105
% Y = X; % target set = source set,  d=2,n=105
% [d,n] = size(X);
% 
% %%compute cofficient
% para.maxIter = 400;
% para.tol = 1e-9;
% para.c = 0.8;
% para.L = 1;
% 
% beta0 = rand(n, n);%105*105
% 
% lambda = 0.1;
% tic; 
% [fval, beta] = GroupSparsity(X, Y, lambda, beta0, para);
% toc;
% %%%%plot(fval);
% fval(end)
% 
% %%compute D
% D = compute_D(beta);
% 
% %%compute Z
% alpha = 4;
% method = 'd';
% 
% [Z,clusterCenters] = ds3(D,alpha,method)

%The second method
clc,clear
randn('state',111)
rand('state',111)
Ng = 35; % number of points in each group
B = [randn(2,Ng)+repmat([-5;0],1,Ng) randn(2,Ng)+repmat([5;0],1,Ng) randn(2,Ng)+repmat([0;5],1,Ng)]; % source set,2*105

%compute D
alpha = 9;
maxIter = 400;
[f_value, X] = GroupSparsity_FISTA(B, alpha,maxIter,1*10^-5);
plot(f_value);
D = compute_D(X);

%%compute Z
alpha = 3;
method = 'd';

Z = ds3(D,alpha,method);
% find representatives and clustering
sInd = findRepresentatives(Z);
[clusters,clusterCenters] = findClustering(Z,sInd);
clusterCenters = sort(clusterCenters)






































