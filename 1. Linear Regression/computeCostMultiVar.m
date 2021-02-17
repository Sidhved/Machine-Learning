function J = computeCostMultiVar(X, y, theta)
  m = length(y);
  J = 0;
  J = (0.5*m) * (((X * theta) - y)' * ((X * theta) - y));
endfunction
