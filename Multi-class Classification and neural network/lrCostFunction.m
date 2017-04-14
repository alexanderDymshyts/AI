function [J, grad] = lrCostFunction(theta, X, y, lambda)
%LRCOSTFUNCTION Compute cost and gradient for logistic regression with 
%regularization
%   J = LRCOSTFUNCTION(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
%Hypotheses
h = sigmoid(X * theta);
%Gradient descent
grad = (X' * (h - y)) / m;
%Regularization for gradient descent
grad_reg = (lambda / m )  * theta;
%Set bias to 0
grad_reg(1) = 0;
%Normal gradient + regularization
grad = grad + grad_reg;
%Cost function
cost = - (sum(y.* log(h) + (1 - y).* log(1 - h))) / m;
%Regularization for cost function 
cost_reg = (lambda / (2 * m)) * sum(theta(2:size(theta)).^ 2);
%Cost function for logistic regression with regularization (bias excluded)
J =  cost + cost_reg;

% =============================================================

grad = grad(:);

end
