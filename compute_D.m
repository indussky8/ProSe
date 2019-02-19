%compute D
function D = compute_D(X)
[~,n] = size(X);
for i = 1:1:n
    for j = 1:1:n
         D(i,j) = norm(X(:,i)-X(:,j),1);
    end
end



    