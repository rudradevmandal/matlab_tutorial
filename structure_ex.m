clear all
clc
LastName = {'A';'B';'C';'D';'E'};
Age = [38;43;38;40;49];
Account = [1;2; 3; 4; 5];
Height = [71;69;64;67;64];
Weight = [176;163;131;133;119];
House = [124 93; 109 77; 125 83; 117 75; 122 80];
T = table(Age,Account,Height,Weight,House, 'RowNames', LastName);
field1 = 'f1';  value1 = 10;
field2 = 'f2';  value2 = {'a', "Hello",T};
field3 = 'f3';  value3 = {pi, pi.^2, pi.^3};
field4 = 'f4';  value4 = {'a'};

s = struct(field1,value1,field2,value2,field3,value3,field4,value4)