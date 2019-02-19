%compute D
function D = compute_D_Euc(X)
[~,n] = size(X);
for i = 1:1:n
    for j = 1:1:n
         D(i,j) = (norm(X(:,i)-X(:,j),2))^2;
    end
end