# LinearRegression
CECS 456 Assignment
1. Linear regression with one variable

In this part of this exercise, you will implement linear regression with one variable to predict profits for a food truck. Suppose you are the CEO of a restaurant franchise and are considering different cities for opening a new outlet. The chain already has trucks in various cities and you have data for profits and populations from the cities. You would like to use this data to help you select which city to expand to next.

The file ex1data1.txt contains the dataset for our linear regression problem. The first column is the population of a city and the second column is the profit of a food truck in that city. A negative value for profit indicates a loss.

`2.1 Plotting the data`

Before starting on any task, it is often useful to understand the data by visualizing it. For this dataset, you can use a scatter plot to visualize the data, since it has only two properties to plot (profit and population). Many other problems that you will encounter in real life are multi-dimensional and can't be plotted on a 2-d plot. Set the xlabel: 'Population of City in 10,000s' and ylabel: 'Profit in $10,000s'

`2.2 Gradient Descent`

In this section, you will fit the linear regression parameters to our dataset using gradient descent.

`2.2.1 Update Equations`

The objective of linear regression is to minimize the cost function where the hypothesis  is given by the linear model

Recall that the parameters of your model are the θ values. These are the values you will adjust to minimize cost . One way to do this is to use the batch gradient descent algorithm. In batch gradient descent, each iteration performs the update


With each step of gradient descent, your parameters j come closer to the optimal values that will achieve the lowest cost.


Implementation Note: We store each example as a row in the the X matrix. To take into account the intercept term (), we add an additional first column to X and set it to all ones. This allows us to treat  as simply another 'feature'.


`2.2.2 Computing the cost`

As you perform gradient descent to minimize the cost function , it is helpful to monitor the convergence by computing the cost. In this section, you will implement a function to calculate  so you can check the convergence of your gradient descent implementation.

As you are doing this, remember that the variables X and y are not scalar values, but matrices whose rows represent the examples from the training set. Now you should run the code and compute the cost.


`2.2.3 Gradient descent`

Next, you will implement gradient descent.

As you program, make sure you understand what you are trying to optimize and what is being updated. Keep in mind that the cost  is parameterized by the vector θ, not X and y. That is, we minimize the value of  by changing the values of the vector θ, not by changing X or y. Refer to the equations given earlier in class

A good way to verify that gradient descent is working correctly is to look at the value of J and check that it is decreasing with each step. Assuming you have implemented gradient descent and cost computation correctly, your value of  should never increase, and should converge to a steady value by the end of the algorithm.

Now you need to plot the linear regression outcome on top of your scatter plot.

`2.3 Visualizing LogoDescription automatically generated with low confidence`

To understand the cost function  better, you will now plot the cost over a 2-dimensional grid of  and  values. You will not need to code anything new for this part, but you should understand how the code you have written already is creating these images.
