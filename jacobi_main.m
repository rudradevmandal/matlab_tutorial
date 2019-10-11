clear all
clc
%% Inititalisation
n = input('Enter the no. of variables: ');
matrix = zeros(n,n+1);
%Taking input for all coefficients
for i = 1:n
    disp('Enter the coefficients: ');
    for j = 1:n+1
        matrix(i,j) = input('Enter the number: \n');
    end
end
A = matrix(1:n,1:n);
b = matrix(:,n+1);
disp('This is the coefficients matrix:');
disp(A);
disp('This is the RHS matrix:');
disp(b);
%Taking guesses
for i = 1:n
        x(i,1) = input('Enter the guess: \n');
end
%% Finding solutions for the system of linear equations
tol = 1e-5;
% Check for NO or INFINITE solutions using ranks.
if rank([A,b]) > rank(A)
    disp('The system has NO solutions.');
elseif rank([A,b])== rank(A) && rank([A,b])< n
    disp('The system has INFINITE solutions.');
elseif rank([A,b])== rank(A)
    %Check for convergence criterion.
    d = diag(diag(A)); %Diagonal elements of A.
    R = A-diag(diag(A));
    % Convergence criterion
    c = max(eig(inv(d)*R));
    % Check for convergence
    if abs(c)<1
        [X,itr] = jacobi(A,b,x,tol);
        disp('The solutions are: ');
        disp(X);
        fprintf('in %d iterations.\n',itr);
    else
        disp('The convergence criterion did not meet.');
    end
end
    
