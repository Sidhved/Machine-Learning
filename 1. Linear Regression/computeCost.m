function J = computeCost(X, y, theta)
  m = length(y);
  J = 0; % initialise J at 0
  J = (1/(2*m))*sum((X * theta - y).^2)
endfunction
