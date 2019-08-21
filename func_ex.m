clear all
clc
n=7;
r=3;
c = @fact;
P=c(n)/(c(r)*c(n-r))
d=@(t,q) t*q^2; %declaring an anonymous function
d(3,4)