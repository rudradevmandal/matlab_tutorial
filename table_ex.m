clear all
clc
LastName = {'A';'B';'C';'D';'E'};
Age = [38;43;38;40;49];
Account = [1;2; 3; 4; 5];
Height = [71;69;64;67;64];
Weight = [176;163;131;133;119];
House = [124 93; 109 77; 125 83; 117 75; 122 80];
T = table(Age,Account,Height,Weight,House, 'RowNames', LastName)