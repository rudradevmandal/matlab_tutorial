clear all
clc
A = [1 2 3;4 5 6;7 8 9];    %Create an array
L = logical(mod(A,2));      %Check for odd
P = isprime(A);
A(L)
A(~L)
A(P)
