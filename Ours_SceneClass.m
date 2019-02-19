clc;
clear;
close all;
load('vgg19fc7_scene.mat')
data = featuremat;%d*n

%initialize
    opts.maxIter_FISTA = 10;      % # max iterations for FISTA
    opts.maxIter_Dykatra = 5;     % # max iterations for Dykatra
    opts.thr_Dykatra = 1 * 10^-5; % tolerance between Dykatra iterations
    opts.thr_FISTA = 1 * 10^-5;   % tolerance between FISTA iterations
    alpha = 10;%%%%
    param.alpha_l1l2 = alpha; % hyper-parameter for row sparsity        
    param.alpha_row  = alpha; % hyper-parameter for diversity%%%%
    param.alpha_col  = alpha; % hyper-parameter for locality-sensitivity


X_training_all = [];%training set, all
label_training_all = [];
X_training_rep = cell(1,4);%training set, prototypes
label_training_rep = cell(1,4);
Y_testing = [];%testing set
label_testing = [];

Num = [216 241 311 210 289 360 328 260 308 374 410 292 356 215 315];
for i =1:15
    if i == 1
        data_i = data(:,1:Num(1));
    else
        data_i = data(:,sum(Num(1:i-1))+1 : sum(Num(1:i)));
    end
    num_i = Num(i);%training set + testing set, number
    num_i_training =  floor( num_i*0.20);%training set all, number
    num_i_rep = floor( num_i_training*0.35);%prototypes, number
    % trainging data
    X_training_all_i = data_i(:,1:num_i_training);
    X_training_all = [X_training_all,X_training_all_i];%%training set, all
    label_training_all_i = ones( num_i_training,1)*i;
    label_training_all = [label_training_all;label_training_all_i];
    % testing data
    Y_testing_i = data_i(:,num_i_training+1 : end);
    Y_testing = [Y_testing,Y_testing_i];
    label_testing_i = ones(num_i-num_i_training,1)*i;
    label_testing = [label_testing;label_testing_i];
    
    % prototypes
    
    %% initialize X
B = X_training_all_i;
alpha_X = 0.09;
maxIter = 400;
[~, X] = GroupSparsity_FISTA(B, alpha_X,maxIter,1*10^-5);
%plot(f_value);%%

%%all initialize
maxIter = 6;
terminate = false;
k = 1;
f_value(k) = 0;
errThr = 10^-4;
     
%% DS3 initialize
    alpha_Z = num_i_rep;%%%%
    method = 'd';
    
%% SSDS initialize
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
     f_value(k+1) = norm(B-B*X,'fro')^2+param.lambda_l1l2*Norm_12(X)+param.lambda_col*trace(D*Z./0.0001);
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
  

   topk = num_i_rep;
   num_rep_all = length(sInd);
   if floor(topk*1/7)> num_rep_all
       repInd{i,1} = sInd;
   else
       repInd{i,1} = sInd(1:floor(topk*1/7));
   end
   
   if floor(topk*2/7)> num_rep_all
       repInd{i,2} = sInd;
   else
       repInd{i,2} = sInd(1:floor(topk*2/7));
   end
   
   if floor(topk*4/7)> num_rep_all
       repInd{i,3} = sInd;
   else
       repInd{i,3} = sInd(1:floor(topk*4/7));
   end
   
   if  topk > num_rep_all
       repInd{i,4} = sInd;
   else
       repInd{i,4} = sInd(1:topk);
   end
   
%    repInd{i,1} = sInd(1:floor(topk*1/7));  % indices of top representatives,5%
%    repInd{i,2} = sInd(1:floor(topk*2/7));  % indices of top representatives,10%
%    repInd{i,3} = sInd(1:floor(topk*4/7));  % indices of top representatives,20%
%    repInd{i,4} = sInd(1:topk);  % indices of top representatives,35%
   for k = 1:4
        X_training_rep_i{i,k} = X_training_all_i(:,repInd{i,k});
        label_training_rep_i{i,k} = ones(length(repInd{i,k}),1)*i;
        X_training_rep{1,k} = [X_training_rep{1,k},X_training_rep_i{i,k}];%%%training set, prototypes
        label_training_rep{1,k} = [label_training_rep{1,k};label_training_rep_i{i,k}];%%%training set, prototypes label
   end
end

K = 1;
y1 = knn(Y_testing, X_training_all, label_training_all, K)  ;
error1 = nn_error(y1',label_testing);
for k =1:4
    y2{k} = knn(Y_testing, X_training_rep{1,k}, label_training_rep{1,k}, K) ;
    error2(k) =  nn_error(y2{k}',label_testing);
    error(k) = error2(k) - error1;
end
save Ours_result_0.20.mat  repInd error y1 y2 label_testing