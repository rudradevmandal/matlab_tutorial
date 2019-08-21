clear all
clc
%Initialising the input
x = input('Enter a number : ');
%Check if the inout number is divisible by 2
if mod(x,2) == 0
    disp('The number entered is EVEN.');
else
    disp('The number entered is ODD.');
end