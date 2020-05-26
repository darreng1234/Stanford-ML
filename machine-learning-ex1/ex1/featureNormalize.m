function [X_norm, Y_norm, mu, sigma] = featureNormalize(X, Y)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

Y_norm = Y;

Y_norm = (Y_norm-(sum(Y)/length(Y)))./std(Y);

if size(X,2) > 2,
  mu(1,2) = sum(X(:,2))/length(X(:,2));
  mu(1,3) = sum(X(:,3))/length(X(:,3));
else,
  mu(1,1) = sum(X(:,1))/length(X(:,1));
  mu(1,2) = sum(X(:,2))/length(X(:,2));
endif;

if size(X,2) > 2,
  sigma(1,2) = std(X(:,2));
  sigma(1,3) = std(X(:,3));
else,
   sigma(1,1) = std(X(:,1));
   sigma(1,2) = std(X(:,2));
endif;

X_norm = (X_norm-mu)./sigma;
X_norm(:,1) = 1;
% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       









% ============================================================

end
