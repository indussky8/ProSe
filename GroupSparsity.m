%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% min_\beta: 0.5 \|Y-X\beta\|_F^2 + \lambda \|\beta\|_2,1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [fval, beta] = GroupSparsity(X, Y, lambda, beta0, para)

if nargin <= 4
    para.maxIter = 1000;
    para.tol = 1e-4;
    para.c = 0.8;
    para.L = 1;
end

if nargin <= 3
    beta0 = zeros(size(X,2), size(Y, 2));
end

Z = beta0; 
beta = beta0;
betaLast = beta0;
aLast = 1;

for k = 0:para.maxIter
    k
    gradient_Z = X'*(X*Z-Y);
    beta = Shrink(Z-gradient_Z/para.L, lambda/para.L);
    delta = beta - Z;
    f0_Z_1 = 0.5*norm(Y-X*Z, 'fro')^2 ;
    f0_Z_2 = sum(sum((gradient_Z + 0.5*para.L*delta).*delta));
    f0_Z = f0_Z_1 + f0_Z_2;
    f0_beta = 0.5*norm(Y-X*beta, 'fro')^2;
    % gradientNorm_Z = norm(gradient_Z, 'fro')^2;
    while f0_beta > f0_Z
        para.L = para.L/para.c;
        if para.L > 1e10
            fval(k+1) = f0_beta/2 + lambda * sum(sum(beta.*beta, 2).^0.5);
            disp('L is too large');
            return;
        end
        beta = Shrink(Z-gradient_Z/para.L, lambda/para.L);
        delta = beta - Z;
        f0_Z_2 = sum(sum((gradient_Z + 0.5*para.L*delta).*delta));
        f0_Z = f0_Z_1 + f0_Z_2;
        f0_beta = 0.5*norm(Y-X*beta, 'fro')^2;
    end
    a = (1+(1+4*aLast)^0.5) / 2';
    Z = (a+aLast-1)/a * beta - (aLast-1)/a * betaLast;
    aLast = a;
    betaLast = beta;
    % Z = beta;
    fval(k+1) = f0_beta/2 + lambda * sum(sum(beta.*beta, 2).^0.5);
    if k>= 1 && abs(fval(k+1)-fval(k)) <= para.tol
        return;
    end
end

