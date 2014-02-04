% Calculates ODE Solution Using Euler's Method
% Alexander Mitkus
% Mar 5, 2012
% APPM 3050, Homework #5

function yFinal1 = OdeEuler(a, b, nStep, yInit)

close all                   % Housekeeping

h = (b - a) / nStep;        % Calculate step size

y = zeros(1, nStep + 1);    % Pre-allocate the y soln vector
y(1) = yInit;               % Set the initial y value


x = a : h : b;              % Define the x vector values


% Implement Euler's Method
for k = 1 : nStep
   y(k+1) = y(k) + h * MyFunc(x(k),y(k));
end

yFinal1 = y(k+1);           % Assign value to be returned

end