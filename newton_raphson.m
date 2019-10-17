clear all
clc
%% Input
% Take the input function as a string
a = input('Enter the function in terms of variable x: ','s');
% Initail guess
x(1) = input('Enter the initial guess: ');
%% Initialisation
% Error
error = 1e-6;
% Creating an inline function 
f = inline(a);
% Differentiating the function
dif = diff(str2sym(a));
% Create an inline differentiated function
d = inline(dif);
% Solution check
sol = false;
% Maximum number of iterations
max_i = 20;
% smallest divider
delta = 1e-10;
i = 1;
err(1) = Inf;
%% Newton-Raphson algorithm
while err(i)>error
     %Check for discontinuity
     if abs(d(x(i))) < delta
         disp('Function is discontinuous.');
         break;
     end
     % x_n+1 = x_n - something
     x(i+1) = x(i) - ((f(x(i)))/(d(x(i))));
     % error x_now - x_previous
     err(i+1) = abs(x(i+1) - x(i));
     i = i+1;
     if i == max_i
         disp('Maximum number of iterations reached.');
     end
end
if err(i) <= error
    fprintf('The roots for the function, f(x) = %s, is %f.',a,x(i));
else
    disp('Newton-Rphson method did not converge.');
end


















