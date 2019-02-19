function A_l12 = Norm_12(A)
[m,~]= size(A);
A_l12 = 0;
for i=1:1:m
    norm_i=norm(A(i,:),2);
    A_l12 = A_l12+norm_i;
end