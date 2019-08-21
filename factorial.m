clear all
clc
%Take the input
x = input('Enter an Integer : ');
%Intialise the factoria; variable
f = 1;
%Run the for loop till x.
for i = 2:x
    %Multiply sequentially
    f = f*i;
end
disp(f);