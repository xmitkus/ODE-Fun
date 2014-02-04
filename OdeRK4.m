% Calculates ODE Solution Using RK-4 Method
% Alexander Mitkus
% Mar 5, 2012
% APPM 3050, Homework #5

function yFinal4 = OdeRK4(a, b, nStep, yInit)

close all                   % Housekeeping

h = (b - a) / nStep;        % Calculate step size

k = zeros(1,4);             % Pre-allocate the k values vector
y = zeros(1, nStep + 1);    % Pre-allocate the y soln vector
y(1) = yInit;               % Set the initial y value


x = a : h : b;              % Define the x vector values


% Implement Runge-Kutta-4 Method
for i = 1 : nStep;
    
    k(1) = h * MyFunc(x(i), y(i));
    k(2) = h * MyFunc(x(i) + h/2, y(i) + k(1)/2);
    k(3) = h * MyFunc(x(i) + h/2, y(i) +k(2)/2);
    k(4) = h * MyFunc(x(i) + h, y(i) +k(3));
    
    y(i+1) = y(i) + 1/6 * (k(1) + 2*k(2) + 2*k(3) + k(4));

end


yFinal4 = y(i+1);           % Assign return value

end