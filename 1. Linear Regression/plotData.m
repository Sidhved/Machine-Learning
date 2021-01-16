function plotData(x,y)
  figure; % opens a new figure window
  plot(x, y, 'rx', 'MarkerSize', 10);
  ylabel('Profit in $10,000s')
  xlabel('Population of Cities in 10,000s')  
endfunction
