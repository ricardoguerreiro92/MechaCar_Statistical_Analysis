# adding dplyr library
library(dplyr)
# Performing Linear Regression on MechaCar_mpg data
mecha_cars <- read.csv('MechaCar_mpg.csv',stringsAsFactors = F) # loading mechacar_mpg dataset 
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_cars) # create linear regression
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_cars)) # summarize linear regression
# Creating Visualizations for the Trip Analysis
sus_coils <- read.csv('Suspension_Coil.csv', stringsAsFactors = F) # loading suspension_coil dataset
total_summary <- sus_coils %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), Standard_Deviation=sd(PSI)) # Create a summary for all PSI data
lot_summary <- sus_coils %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), Standard_Deviation=sd(PSI)) # Create a summary for all PSI data grouped by lot
# T-tests on Suspension Coils
t.test(x=sus_coils$PSI, mu=1500) # t test n all cars' PSI with a mean of 1500
lot1 <- subset(sus_coils, Manufacturing_Lot=='Lot1') # Create subset for lot 1 cars
t.test(x=lot1$PSI, mu=1500) # t test on lot 1 cars' PSI with a mean of 1500
lot2 <- subset(sus_coils, Manufacturing_Lot=='Lot2') # Create subset for lot 2 cars
t.test(x=lot2$PSI, mu=1500) # t test on lot 2 cars' PSI with a mean of 1500
lot3 <- subset(sus_coils, Manufacturing_Lot=='Lot3') # Create subset for lot 3 cars
t.test(x=lot3$PSI, mu=1500) # t test on lot 3 cars' PSI with a mean of 1500
# Comparing MechaCar to the Competition 
