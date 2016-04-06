function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

theta_transp_x = X*theta;
h_o_X = sigmoid(theta_transp_x);
J = 1/m*( sum(-1*y.*log(h_o_X)-(1-y).*log(1-h_o_X) ) ) + lambda/(2*m)*(sum(theta.*theta)-theta(1)*theta(1));
grad = 1/m*(X'*(h_o_X - y));
extra_grad = lambda/m*theta;
extra_grad(1) = 0;
grad = grad + extra_grad;






% =============================================================

end
