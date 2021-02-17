# Machine-Learning in Octave

* Linear Regression
   * Single Variabe Linear Regression:
    The file "SingleVariableLinearRegression.m" consists of the main driver code for the implementation of gradient descent and linear regression on the given data from file           "data1.txt".
    The main file consists of the following processes:
      * Loading Data
      * Using the computeCost funtion to compute the cost J
      * Using the gradientDescent function to compute parameters theta
      * Plotting Linear Fit as seen below: ![Figure 1](https://github.com/Sidhved/Machine-Learning/blob/main/1.%20Linear%20Regression/Figure%201.PNG)
      * Visualising J(theta_0, theta_1) as a surface plot: ![Figure 2](https://github.com/Sidhved/Machine-Learning/blob/main/1.%20Linear%20Regression/Figure%202.PNG)
      * Visualising J(theta_0, theta_1) as a contour plot: ![Figure 3](https://github.com/Sidhved/Machine-Learning/blob/main/1.%20Linear%20Regression/Figure%203.PNG)

  * Multiple Variable Linear Regression:
   The file "MultipleVariableLinearRegression.m" consists of the main driver code for the implementation of gradient descent and linear regression on the given data consisting of    3 variables (including 1 target variable) from the file "data2.txt"
   The main file consists of the following processes:
    * Loading Data
    * Using the featureNormalization fuunction to normalize the parameters
    * Using the gradientDescentMultiVar function to compute parameter theta with alpha = 0.000000001
    * Visualising the convergence graph: ![Figure 4](https://github.com/Sidhved/Machine-Learning/blob/main/1.%20Linear%20Regression/Figure%204.PNG)
    * Solving by normalEquation function to calculate parameter theta
