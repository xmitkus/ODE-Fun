% Homework 05
% Test program for ODE solvers

clc
clear

%----------------------------------------------------

% We may get the input values from the user...
% a     = input('Enter a: ');
% b     = input('Enter b: ');
% nStep = input('Enter nStep: ');
% yInit = input('Enter yInit: ');
%
% or we may hard code them...


a = 0;
b = 1;
nStep = 5;
yInit = 0;

%----------------------------------------------------

% Call each ODE solver method...
yFinal1 = OdeEuler(a, b, nStep, yInit);
yFinal2 = OdeAverage(a, b, nStep, yInit);
yFinal3 = OdeRK2(a, b, nStep, yInit);
yFinal4 = OdeRK4(a, b, nStep, yInit);

% Display yFinal from each ODE solver...
disp(yFinal1)
disp(yFinal2)
disp(yFinal3)
disp(yFinal4)