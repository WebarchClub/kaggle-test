function [J, grad] = costFunctionLogisticReg(theta, X, y, lambda)

m = length(y); 
n = length(theta); 
J = 0;
grad = zeros(size(theta));

[J, grad] = costFunctionLogistic(theta, X, y);
theta1 = theta(1);
J = J + (lambda/(2*m))*sum(theta.^2) - (lambda/(2*m))*theta1^2;

for i = 2:n
	grad(i) = grad(i) + (lambda/m) * theta(i);
end

end
