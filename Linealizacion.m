clc
clear
syms x
syms y
z = linspace(-10,10);
f1 = sin(y);
f2 = cos(y);
f3 = tan(x);
T1 = taylor(f1, y, 'ExpansionPoint', 0)
T2 = taylor(f2, y, 'ExpansionPoint', 0)
T3 = taylor(f3, x, 'ExpansionPoint', 0)