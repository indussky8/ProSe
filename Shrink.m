function B = Shrink(M, tau)
[m, n] = size(M);
B = zeros(m, n);

normRow = sum(M.*M, 2).^0.5;
index =  (normRow > tau);
B(index, :) = diag(1-tau./normRow(index)) * M(index, :); 


