function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
temp2=0;
temp1=0;

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %


n1=0;
n2=0;
for i=1:m
    x= X(i,2);
    yy=y(i);
    n1 = n1+(theta(1)+theta(2)*x-yy);
    n2 = n2+(theta(1)+theta(2)*x-yy)*x;
end;

temp1 = theta(1)- (alpha)*(1/m)*n1;
temp2 = theta(2)- (alpha)*(1/m)*n2;
theta(1)= temp1;
theta(2)= temp2;

%    h=(theta'*X')';
%    theta = theta -((1/m) * (h - y)' * X)' * alpha;
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
    %fprintf('Value.\n %f',J_history(iter));
    %pause;
end
pause;
end
