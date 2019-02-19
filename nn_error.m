function error = nn_error(y,gnd)
n = length(y);
error =1-( length(find(y==gnd))/n);
end