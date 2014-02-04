% Calculates ODE Solution Using RK-2 Method
% Alexander Mitkus
% Mar 5, 2012
% APPM 3050, Homework #5

function yFinal3 = OdeRK2(a, b, nStep, yInit)

close all                   % Housekeeping

h = (b - a) / nStep;        % Calculate step size

y = zeros(1, nStep + 1);    % Pre-allocate the y soln vector
y(1) = yInit;               % Set the initial y value


x = a : h : b;              % Define the x vector values


% Implement Runge-Kutta-2 Method
for k = 1 : nStep;
    yMidPoint = y(k) + h * MyFunc(x(k),y(k))/2;
    MidPointSlope = MyFunc(x(k) + h/2, yMidPoint);
    y(k+1) = y(k) + h * MidPointSlope;

end


yFinal3 = y(k+1);           % Assign return value

end