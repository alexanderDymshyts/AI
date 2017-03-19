function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    
    tempTheta = theta;
    theta(1) = tempTheta(1) - (alpha*sum(X*tempTheta-y))/m;
    theta(2) = tempTheta(2) - (alpha*sum((X*tempTheta-y).*X(:,2)))/m; 
      
    %Generic version     
    %for j = 1:length( theta )      
        %theta(j) =  tempTheta(j) - ( alpha * sum(( X * tempTheta - y ).*X( :,j ))) / m;
    %end
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end
end
