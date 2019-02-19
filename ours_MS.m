clc,clear
%% generate data
% load('B_Gaussian_noisy.mat')
% B = B_Gaussian_noisy;;

cd 'Hopkins155'
addpath '/home/zxx/ACMMM_v1/';
% addpath '/home/zxx/ACMMM_v1/Hopkins155/'

maxNumGroup = 5;
for i = 1:maxNumGroup
    num(i) = 0;
end

jj=1;
d_file= dir;

%idx = [55 62 72 75 78 83 85 94 95 99 102 113];
%for kk = 1:length(idx) 
%    i = idx(kk);
  for i = 79 %141:length(d_file)
    if ( (d_file(i).isdir == 1) && ~strcmp(d_file(i).name,'.') && ~strcmp(d_file(i).name,'..') )
        filepath = d_file(i).name;
        eval(['cd ' filepath]);
        
        f = dir;
        foundValidData = false;
        for j = 1:length(f)
            if ( ~isempty(strfind(f(j).name,'_truth.mat')) )
                ind = j;
                foundValidData = true;
                break
            end
        end
        eval(['load ' f(ind).name]);

        cd ..
        
        if (foundValidData)
            n = max(s);%��ǰ�ļ�������n��motions
            N = size(x,2);%����x��3*379*24
            F = size(x,3);
            d = 2*F; %2Fά��

            alpha = n; % regularizer coefficient
            B = reshape(permute(x(1:2,:,:),[1 3 2]),d,N); %2F*N��ɾȥ������m*d
            addpath '/home/zxx/ACMMM_v1/'

%% initialize X
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
    alpha_Z = n+4;%n;%%%%
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
    addpath '/home/zxx/ACMMM_v1/SSDS_PR17-master'
    BTB = B'*B; LipC = norm(BTB,'fro'); 
    cal_lambda = computeLambda_mat(B,true);
    coeff = cal_lambda/LipC;
    param.lambda_l1l2 = coeff/param.alpha_l1l2;
    param.lambda_row = 0;%coeff/param.alpha_row;%%%%hyper-parameter for diversity
    param.lambda_col = coeff/param.alpha_col;
%     rmpath SSDS_PR17-master
     addpath '/home/zxx/ACMMM_v1/'
     
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

Matrix_Z{i} = Z/0.0001;

%% find representatives and clustering
sInd = findRepresentatives(Z);
[clusters,clusterCenters] = findClustering(Z,sInd);
Rep{i} = sInd;
error(jj) = Misclassification(clusters',s);

         % groups = findClustering_L1Inf(Z);%the classification of every data in X       
         % error2(jj) = Misclassification(groups,s);
          
%            missrate = error;
%            num(n) = num(n) + 1;
%            missrateTot{n}(num(n)) = missrate;%��ӳ���ʱ��       
%            missrateTot_k{n}(num(n)) = missrate_k;%��ӳ���ʱ��     
%            eval(['cd ' filepath]);

            %cd ..
            jj=jj+1;
%             save result_2.mat Matrix_Z Rep error 
        end
    end
end
% save result.mat Matrix_Z Rep error 

% L = [2 3];
% for i = 1:length(L)
%     j = L(i);
%     avgmissrate(j) = mean(missrateTot{j});
%     medmissrate(j) = median(missrateTot{j});
%     avgmissrate_k(j) = mean(missrateTot_k{j});
%     medmissrate_k(j) = median(missrateTot_k{j});
% end



    




