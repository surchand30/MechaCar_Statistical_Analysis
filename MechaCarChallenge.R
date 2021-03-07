library(dplyr)
library(tidyverse)
# Reading the csv file
car_data <- read.csv('MechaCar_mpg.csv')

#generate multiple linear regression model

lm(mpg~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=car_data)

summary(lm(mpg~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=car_data))

# Deliverable2 - Suspension Coil Analysis

suspension_coil <- read.csv("Suspension_Coil.csv")

Mean <- mean(suspension_coil$PSI)
Median <- median(suspension_coil$PSI)
Variance <- var(suspension_coil$PSI)
SD <- sd(suspension_coil$PSI)

#Total Summary
total_summary <- data.frame(Mean,Median,Variance,SD)

#Summary by lot
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median = median(PSI),Variance = var(PSI),SD = sd(PSI), .groups = 'keep') 


# Deliverable 3 t-test analysis

#t-test for all lots

t.test((suspension_coil$PSI),mu = 1500)

# t-test for each lot

t.test(subset(suspension_coil,Manufacturing_Lot =="Lot1")$PSI,mu = 1500)
t.test(subset(suspension_coil,Manufacturing_Lot =="Lot2")$PSI,mu = 1500)
t.test(subset(suspension_coil,Manufacturing_Lot =="Lot3")$PSI,mu = 1500)
