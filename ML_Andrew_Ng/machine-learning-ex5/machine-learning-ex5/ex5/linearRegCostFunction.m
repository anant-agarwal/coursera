function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

hox = X*theta;
J = 1/(2*m)*( sum((hox - y).*(hox-y)) );
 r=  lambda/(2*m) * ( sum(theta.*theta) - theta(1)*theta(1));
J = J+ r;

new_hox_minus_y = repmat( hox - y, 1, size(theta,1));
grad = 1/m * sum(X.*(new_hox_minus_y))';
grad_r = lambda/m * theta;
grad_r(1) = 0;
grad = grad + grad_r; 









% =========================================================================

grad = grad(:);

end
