clear all
clc
%Input any time in 24 hrs format
x = input('Enter the time in 24 hrs format : ');
%Check if the input time is valid
if x>=0 && x<24
    %Check for morning
    if x>=0 && x<12
        disp('Its Morning');
        %Check for afternoon
    elseif x>=12 && x<16
        %Check for Evening
        disp('Its afternoon');
    else
        disp('Its Evening');
    end
else
    disp('You have entered an INVALID time.');
end