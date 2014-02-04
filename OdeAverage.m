% Calculates ODE Solution Using Average Method
% Alexander Mitkus
% Mar 5, 2012
% APPM 3050, Homework #5

function yFinal2 = OdeAverage(a, b, nStep, yInit)

close all                   % Housekeeping

h = (b - a) / nStep;        % Calculate step size

y = zeros(1, nStep + 1);    % Pre-allocate the y soln vector
y(1) = yInit;               % Set the initial y value


x = a : h : b;              % Define the x vector values


% Implement Average Method
for k = 1 : nStep;
    SlopeL = MyFunc(x(k),y(k));
    y(k+1) = y(k) + h * MyFunc(x(k),y(k));
    SlopeR = MyFunc(x(k+1),y(k+1));
    y(k+1) = y(k) + h * (SlopeL + SlopeR)/2;
end


yFinal2 = y(k+1);           % Assign return value

end