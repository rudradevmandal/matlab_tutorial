function [x,itr] = jacobi(A,b,X,tol)
%% Initialising 
% tolerance variable
normVal=Inf; 
% Calculating the size
n = size(X,1);
% Initialising the iteration variable
itr=0;
%% Algorithm: Jacobi Method
% checking the current tolerance value against the limit.
while normVal>tol
    Xold=X;
    % Calculating R*x
    for i=1:n
        sigma=0;
        for j=1:n
            if j~=i
                sigma=sigma+A(i,j)*X(j);
            end
        end
        % Calculating (D^-1)*(b-R*x)
        X(i)=(1/A(i,i))*(b(i)-sigma);
    end
    itr=itr+1;
    % Calculating the current tolerance value
    normVal=abs(Xold-X);
end
x=X;
end

