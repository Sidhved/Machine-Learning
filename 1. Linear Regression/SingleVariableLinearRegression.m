%% 1: Linear Regression

fprintf('Plotting Data ...\n')
data = load('data1.txt');
X = data(:, 1); y = data(:, 2);
m = length(y); % number of training examples
plotData(X, y); % user defined funtion

%Gradient Descent and Cost
X = [ones(m, 1), data(:,1)]; % Add a column of ones to x and then the data
theta = zeros(2, 1); % initialize fitting parameters as zero matrix_type
iterations = 1500; %number of repetations
alpha = 0.01; % learning rate

%initial cost
J = computeCost(X, y, theta);
fprintf('With theta = [0 ; 0]\nCost computed = %f\n', J);
fprintf('Expected cost value (approx) 32.07\n');

%random cost at -1,2
J = computeCost(X, y, [-1 ; 2]);
fprintf('\nWith theta = [-1 ; 2]\nCost computed = %f\n', J);
fprintf('Expected cost value (approx) 54.24\n');

%running gradient desccent
theta = gradientDescent(X, y, theta, alpha, iterations);
fprintf('Theta found by gradient descent:\n');
fprintf('%f\n', theta);
fprintf('Expected theta values (approx)\n');
fprintf(' -3.6303\n  1.1664\n\n');

%plotting linear fit
hold on; % keep previous plot visible
plot(X(:,2), X*theta, '-')
legend('Training data', 'Linear regression')
hold off

%predicting values for population of 35000 and 70000
predict1 = [1, 3.5] *theta;
fprintf('For population = 35,000, we predict a profit of %f\n',predict1*10000);
predict2 = [1, 7] * theta;
fprintf('For population = 70,000, we predict a profit of %f\n',predict2*10000);
    
%Visulaising J(theta_0, theta_1)
theta0_vals = linspace(-10, 10, 100);
theta1_vals = linspace(-1, 4, 100);
J_vals = zeros(length(theta0_vals), length(theta1_vals));%initialize J_vals to a matrix of 0's 
for i = 1:length(theta0_vals)
    for j = 1:length(theta1_vals)
	  t = [theta0_vals(i); theta1_vals(j)];
	  J_vals(i,j) = computeCost(X, y, t);
    end
end

J_vals = J_vals';%taking transpose of J_vals to match the order required
figure; %surgface plot
surf(theta0_vals, theta1_vals, J_vals)
xlabel('\theta_0'); ylabel('\theta_1');
figure; %contour plot
contour(theta0_vals, theta1_vals, J_vals, logspace(-2, 3, 20))
xlabel('\theta_0'); ylabel('\theta_1');
hold on;
plot(theta(1), theta(2), 'rx', 'MarkerSize', 10, 'LineWidth', 2);