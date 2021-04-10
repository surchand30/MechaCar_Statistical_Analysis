# MechaCar_Statistical_Analysis using R

## Overview

AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. The goal is to review the production data and make recommendations to the manufacturing team

## Linear Regression to Predict MPG

* Vehicle_weight,spoiler_angle and AWD provide non random amount of variance. The maximum random variance was provided by ground_clearence and vehicle_length
* Since p-value is less than zero (5.35e-11), the slope is not equal to zero
* The R squared value is 71.49% which implies that roughly 72% of the time the predictions will be correct using the linear model

### Linear Regression Analysis
![Linear Regression](https://github.com/surchand30/MechaCar_Statistical_Analysis/blob/main/images/Multiple%20Linear%20Regression.PNG)

### Summary of Linear Regression
![Summary](https://github.com/surchand30/MechaCar_Statistical_Analysis/blob/main/images/Summary%20of%20Linear%20Regression.PNG)

### Results

Based on the above screenshots, 2 variables provided a non-random amount of variance. These variables are vehicle_length and ground_clearence. Both these variables have extremely small p-values. The remaining 3 attributes namely vehicle_weight,spoiler_angle and AWD contribute to the miles per gallon variance. The r-squared value is 0.7149 which means the model is accurate in predicting the mpg 71.5% of the times making this model a pretty effective method to predict miles per gallon.
