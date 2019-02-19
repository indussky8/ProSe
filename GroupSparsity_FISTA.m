function [f_value, X] = GroupSparsity_FISTA(B, alpha,maxIter,errThr)
[~,n] = size(B);
L = norm(B*B','fro');
%maxIter = 400;
X = zeros(n,n);
W = X;
C = 1/L*(B'*B);
t = 1;
for k = 1:1:n
    row_norm(k)=norm(C(k,:),2);
end
max_lambda = L *max(row_norm);
% lambda = max_lambda/alpha;%alpha=[2,30];
lambda = alpha;%alpha=[2,30];%lambda has been given

% for i = 1:1:maxIter
%     C = W+1/L*(B'*(B-B*W));
%     for j = 1:1:n
%         max_value = max(1-lambda/(L*norm(C(j,:),2)),0);
%         X(j,:) = C(j,:)*max_value;
%         X_norm(j) = norm(X(j,:),2);
%     end
%     U = X;
%     t=(1+sqrt(1+4*t*t))/2;
%     s=t-1;
%     W = X+s*(X-U)/t;
%     f_value(i) = norm(B-B*X,'fro')+lambda*sum(X_norm);
% end


terminate = false;
k = 1;
f_value(k)=0;
while (~terminate)
    C = W+1/L*(B'*(B-B*W));
    for j = 1:1:n
        max_value = max(1-lambda/(L*norm(C(j,:),2)),0);
        X(j,:) = C(j,:)*max_value;
        X_norm(j) = norm(X(j,:),2);
    end
    U = X;
    t=(1+sqrt(1+4*t*t))/2;
    s=t-1;
    W1 = X+s*(X-U)/t;
    f_value(k+1) = norm(B-B*X,'fro')+lambda*sum(X_norm);
    
    err1 = errorCoef(W1,W);
    err2 = f_value(k+1)-f_value(k);
    if ( k >= maxIter || (err1 <= errThr && err2 <= errThr) )
        terminate = true;
%         if (verbose)
%             fprintf('Terminating: \n');
%             fprintf('||Z-C||= %1.2e, ||C1-C2||= %1.2e, repNum = %3.0f, iteration = %.0f \n\n',err1,err2,length(findRepresentatives(C2)),k);
%         end
    else
        k = k + 1;
%         if (verbose)
%             if (mod(k,100)==0)
%                 fprintf('||Z-C||= %1.2e, ||C1-C2||= %1.2e, repNum = %3.0f, iteration = %.0f \n',err1,err2,length(findRepresentatives(C2)),k);
%             end
%         end
    end
    W = W1;
end









































