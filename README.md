# MechaCar_Statistical_Analysis

## Overview of Mecha Car Statistical Analysis
- AutosRU's newest prototype MechaCar have been suffering some production troubles that have been blocking the manufacturing team from achieving any progress. We have been requested by AutosRU's upper management to review the production data for insight that may help the manufacturing team solve this issue. We will be using two datasets, MechaCar MPG and Suspension Coil, to provide some statistical analysis. We will be using programming language R with its dplyr library on RStudio for this specific analysis.

## Linear Regression to Predict MPG
Here we performed a multiple linear regression to check if we can predict the dependent variable - miles per gallon(MPG) on the independent variables - vehicle length, vehicle weight, spoiler angle, ground clearance and all-wheel drive (AWD). With this we will be answering three main questions:

1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
- Vehicle length and ground clearance were the two variables that provided a non-random amount of variance to the MPG values. These two variables have a very small p-value which means they have a high level of significance to how much gas is spent. It is worth to be noted that the intercept also has a high significance level which means there are other factors besides ground clearance and vehicle length that contribute to the variance of the MPG of the MechaCar.

2. Is the slope of the linear model considered to be zero? Why or why not?
- The slope of the linear model is not considered to be zero. The reason why the slope of the linear model is not considered to be zero is because the linear regression we performed shows there are independent values that significantly affect our dependent variable(MPG).

3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not? 
- We can consider this linear model to predict the MPG of MechaCar prototypes to be effective. The reason we can do this is because the main indicator of our model is the multiple r-squared value which in our case its value is 0.7149 meaning that in every 100 prototypes we can effectively predict about 71.5 times the MPG of the MechaCar.

## MPG Multiple Linear Regression
![mpg_mlr](/resources/linear_regression.png)