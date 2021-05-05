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

## Summary Statistics on Suspension Coils

The suspension coils dataset comprised of 150 vehicles IDs falling under 3 lots, and the corresponding PSI levels for each vehicle. As part of the analysis 2 separate summary tables were created to look at the mean,median,variance and standard deviation of the data. The first table looked at all the cars as a whole and the second one classified the data by lots.

### Results

![Total Summary](https://github.com/surchand30/MechaCar_Statistical_Analysis/blob/main/images/TotSummary_SuspensionCoil.PNG)

![Lot Summary](https://github.com/surchand30/MechaCar_Statistical_Analysis/blob/main/images/Smmarybylot_SuspensionCoil.PNG)

The variance of all the cars considered irrespective of the lot is approximately 62.29 PSI which means that it meets the design specification. On looking at the summary at the lot level, Lot 1 and Lot 2 meet the design specification at a variance of approximately 0.97 PSI and 7.46 PSI. However Lot 3 does not meet the design specification since its  variance is approximately more than twice the alloted amount at 170.28 PSI. Hence the manufacturing team should work with the cars in lots 1 and 2 compared to those in lot 3.

## T-Tests on Suspension Coils

The T-test was performed to analyze if the mean of all lots and the mean by individual lots were statistically similar or different from the population mean of 1500 PSI.

### Results

![All Lots](https://github.com/surchand30/MechaCar_Statistical_Analysis/blob/main/images/OneSampleT_test.PNG)

![Lot1](https://github.com/surchand30/MechaCar_Statistical_Analysis/blob/main/images/OneSampleT_Lot1_test.PNG)

![Lot2](https://github.com/surchand30/MechaCar_Statistical_Analysis/blob/main/images/OneSampleT_Lot2_test.PNG)

![Lot3](https://github.com/surchand30/MechaCar_Statistical_Analysis/blob/main/images/OneSampleT_Lot3_test.PNG)

Assuming our significance level was at 0.05 ,the P-values of All Lots (0.06), Lot1(1) and Lot2(0.60) are greater than 0.05, the PSI levels are statistically similar to the population mean of 1500 PSI. Lot3 however with a P-value of 0.041 is less than 0.05 and hence the null hypothesis can be rejected stating that the PSI levels of Lot3 is statistically different from the population mean of 1500 PSI. 


