clear all
clc
syms x y z
%% Example 1: Simple example
f1 = [(x^2)*y, (5*x+sin(y))];
x1 = [x,y];
J1 = jacob(f1,x1);
%% Example 2: Polar coordinates
f2 = [x*cos(y), x*sin(y)];
x2 = [x,y];
J2 = jacob(f2,x2);
%% Example 3: Spherical polar coordinates
f3 = [x*sin(y)*cos(z), x*sin(y)*sin(z), x*cos(y)];
x3 = [x,y,z];
J3 = jacob(f3,x3);
%% Example 4: A complicated one
f4 = [x, 5*z, 4*(y^2)-2*x, z*sin(x)];
x4 = [x,y,z];
J4 = jacob(f4,x4);