clear all
clc
%Making an inventory
fprintf('1. Classic Pizza\n2. Veg Pizza\n3. Chicken Pizza\n');
%Take the input
x = input('Enter an option : ');
%Let's Switch
switch x
    case 1
        disp('100 Rupees only');
    case 2
        disp('200 Rupees only');
    case 3
        disp('300 Rupees only');
    otherwise
        disp('INVALID option');
end