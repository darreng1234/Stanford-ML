function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y
m=size(y,1);
predictions = X*theta;
sqErrors = (predictions - y).^2;
J=sum(sqErrors)/(2*m);

	% sumOfval  = 0;
	% for i=1:m,
	% 	sumOfval+=(theta(1)*X(i,1)+theta(2)*X(i,2) - y(i,i))^2;
	% end;
	% J = sumOfval/(2*m);
endfunction;
% Initialize some useful values
 % number of training examples
m = length(y);
% You need to return the following variables correctly 
%J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.





% =========================================================================

