%Normalizes the Features in X
function [X_norm, mu, sigma] = featureNormalize(X)
  X_norm = X;
  mu = zeros(1, size(X,2));
  sigma = zeros(1, size(X,2));
  
  for i = 1:size(X,2)
    mu(1, i) = mean(X(:, i))        %inbuilt function to calculate the mean
    sigma(1, i) = std(X(:, i))      %inbuilt function to standard deviation in features and storing in sigma
    X(:, i) = X(:, i)-mu(:, i)
    X(:, i) = X(:, i)/sigma(1, i)
  endfor
endfunction
