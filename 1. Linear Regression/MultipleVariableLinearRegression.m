%Part 1: Feature Normalization

%Loading Data
data = load('data2.txt');  
%setting values to variables
X  = data(:, 1:2);
y = data(:, 3);
m = length(y);
%printing some data
fprintf('First 15 examples from the dataset\n');
fprintf('x = [%f %f], y = %f \n', [X(1:10, :), y(1:10, :)]);
fprintf('\n Normalizing Features...\n');
[X mu sigma] = featureNormalization(X);
X = [ones(m,1) X];  %Intercept term 

%Part 2:Gradient Descent
fprintf('Running Gradient Descent... \n');
alpha = 0.000000001;    %alpha value can be altered
num_iters = 1400;
theta = zeros(3,1);   %initialising theta
[theta, J_history] = gradientDescentMultiVar(X, y, theta, alpha, num_iters);    %running gradient descent for multiple variables
%visualising convergence graph
figure;
plot(1:numel(J_history), J_history, '-b', 'LineWidth', 2);
xlabel = ('Number of Iterations');
ylabel = ('Cost J');
%display result
fprintf("Theta computed from gradient descent = %f\n", theta);

%Part 3: Normal Equations

%Loading Data
data = csvread('data2.txt');
X = data(:, 1:2);
y = data(:, 3);
m = length(y);
X = [ones(m,1) X];  %intercept in X
theta = normalEquation(X, y);

fprintf("Theta computed from normalEquation = \n");
fprintf("%f\n", theta);



