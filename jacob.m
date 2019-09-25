function J = jacob(f,x)
%find the size of function and variable vectors
f_size = length(f);
x_size = length(x);
%% Calculating the partial differential
for i = 1:x_size
    for j = 1:f_size
        J(j,i) = diff(f(j),x(i));
    end
end
end