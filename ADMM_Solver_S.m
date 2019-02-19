function S = ADMM_Solver_S(P,Z,lambda1,lambda3,S)
% initialization
[m,m] = size(Z);
rho = 0.1;
Lz = diag(Z* ones(m,1))-Z;
A = P + rho*eye(m);
B = lambda3*(Lz+Lz');
Delta = zeros(m,m);
CFD = ones(m,1);
p = 2;
maxIter = 30;
k = 1;
terminate = false;
errThr = 1 * 10^-7;
verbose = true;
%S0 = S;

% running iterations
while (~terminate)
    C = rho*S-Delta+P;
    W = sylvester(A,B,C);
    
    S0 = shrinkL1Lp(W+Delta/rho,lambda1/rho*CFD,p);
    
    Delta = Delta + rho .* (W - S0);
    
    err1 = errorCoef(W,S0);
    err2 = errorCoef(S,S0);
    
    if ( k >= maxIter || (err1 <= errThr && err2 <= errThr) )
        terminate = true;
        if (verbose)
            fprintf('Terminating: \n');
            fprintf('||W-S||= %1.2e, ||S1-S2||= %1.2e, iteration = %.0f \n\n',err1,err2,k);
        end
    else
        k = k + 1;
        if (verbose)
            if (mod(k,2)==0)
                fprintf('||W-S||= %1.2e, ||S1-S2||= %1.2e, iteration = %.0f \n\n',err1,err2,k);
            end
        end
    end
    S = S0;
end
