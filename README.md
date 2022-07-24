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

### MPG Multiple Linear Regression
![mpg_mlr](/resources/linear_regression.png)

## Summary Statistics on Suspension Coils
Here we added the suspension coils dataset that involved 150 vehicle IDs, 3 different lots and corresponding PSI levels for each of the vehicles. We then created two table to look at mean, median, variance and standart deviation of the dataset. Our first table is a look at said summary for the whole data set and the second table is a look at said summary by each different lot.

### Total Summary
![total_summary](/resources/total_summary.png)

### Lot Summary
![lot_summary](/resources/lot_summary.png)

In this section we will be addressing the following question:
1. The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

- If we look at the total summary table we can see our variance is about 62.3 PSI which means it does meet the design specifications. If we look individually at each lot we see Lot1 with variance of about 0.98 PSI, Lot2 7.47 PSI, Lot3 with 170.29 PSI. The first two lots do meet the design specifications but the third one exceeds it by about 70.29 PSI.

## T-Tests on Suspension Coils
Here we want to determine if all the manufacturing lots and each of the lots individually are statistically different from the mean PSI of the population of 1500 PSI. To find the p-value and identify the statistical difference we used function t.test().<br>If we use the significance level of a normal distribution, which is 95%, we can verify that all our p-values are far greater than 0.05(5%), which means we fail to reject that there is statistical difference between them, we can see this by looking at the following images from all the tests we performed:

### Total population T-Test
![total_t_test](/resources/total_t_test.png)

### Lot 1 T-Test
![lot1_t_test](/resources/lot1_t_test.png)

### Lot 2 T-Test
![lot2_t_test](/resources/lot2_t_test.png)

### Lot 3 T-Test
![lot3_t_test](/resources/lot3_t_test.png)