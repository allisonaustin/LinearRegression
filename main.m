% Allison Austin
% CECS 456 Assignment 1
% 7 March 2022
% Minimizing the cost function using batch gradient descent

% getting data from file
filename = "ex1data1.txt";
datafile = fopen(filename, 'r');
if(datafile == -1)
    disp("Data file not found!");
    exit;
end

% converting data into matrix
M = readtable(filename);
x = M{:,1};
y = M{:,2};

% number of training examples
m = length(y);

% adding column of ones to X
X = [ones(m,1),x];
% initializing theta
theta = zeros(2, 1);
% number of iterations
steps = 1500;
% learning rate
alpha = 0.02;

fprintf('Testing cost function ...');
% calculating value of initial cost function
J = compute_cost(X, y, theta);
% running gradient descent
fprintf('\nStarting gradient descent...');
theta = batch_gradient_descent(theta, X, y, alpha, steps);
fprintf('\nTheta calculated using gradient descent:\n');
fprintf('%f\n', theta);

% plot labels
xlabel = 'Population of City in 10,000s';
ylabel = 'Profit in $10,000s';
title("Scatter plot of training data");
plot(x,y,'x');
hold on

% plotting linear fit on top of scatter plot
plot(X(:,2), X * theta,'-');
legend('Training data', 'Linear regression');
hold off

% method to calculate J(theta) to check convergence
function [J] = compute_cost(X, y, theta)
    m = length(y);
    hypothesis = X * theta;
    J = sum((hypothesis - y).^2);
    J = J/(2*m);
end

% updating cost function
function [theta] = batch_gradient_descent(theta, X, y, alpha, n)
    m = length(y);
    J_vals = zeros(n, 1);
    for i = 1:n
        error = (X * theta) - y;
        for j = 1:length(theta)
            theta(j) = theta(j) - alpha/m * (error' * X(:,j));
        end
        J_vals(i,j) = compute_cost(X, y, theta);
    end
end

