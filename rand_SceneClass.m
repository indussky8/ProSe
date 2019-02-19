clc;
clear;
close all;
load('vgg19fc7_scene.mat')
data = featuremat;%d*n

%initialize
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
 topk = num_i_rep;
 p = randperm(num_i_training);
 sInd = p(1:topk);
 

%% find representatives and clustering
   repInd{i,1} = sInd(1:floor(topk*1/7));  % indices of top representatives,5%
   repInd{i,2} = sInd(1:floor(topk*2/7));  % indices of top representatives,10%
   repInd{i,3} = sInd(1:floor(topk*4/7));  % indices of top representatives,20%
   repInd{i,4} = sInd(1:topk);  % indices of top representatives,35%


   
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
% save Rand_result_0.20.mat  repInd error 