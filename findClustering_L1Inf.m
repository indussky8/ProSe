% This function finds clustering of points according to Z 
% Z: MxN probability matrix obtained by our method

%--------------------------------------------------------------------------
% Copyright @ Xingxing Zhang, 2016
%--------------------------------------------------------------------------

function members = findClustering_L1Inf(Z)
[m,n]=size(Z);
members=zeros(m,1);
for i=1:1:m
    m=find(Z(i,:)==max(Z(i,:)));
    members(i,1)=m;
end
