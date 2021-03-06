# Load dplyr and tidyverse package
library(dplyr)
library(tidyverse)

# Deliverable 1
# Read mechacar_mpg.csv
mechacardata <- read.csv('MechaCar_mpg.csv')
head(mechacardata)

# Use linear regression on mechampgtable
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
     ground_clearance + AWD,data = mechacardata)

# Determine p-value and r-squared for linear regression model
summary(lm(formula = mpg ~ vehicle_length + vehicle_weight + 
             spoiler_angle + ground_clearance + AWD,data = mechacardata))

# Deliverable 2
# Read suspension_coil.csv
suspensiondata <- read.csv('Suspension_Coil.csv')

# Create total_summary df 
total_summary <- suspensiondata %>% summarize(Mean=mean(PSI), Median=median(PSI), 
                                              Variance=var(PSI), SD=sd(PSI))
                                                
# Create lot_summary df
lot_summary <- suspensiondata %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), 
    Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Deliverable 3
# Create a t-test to determine if PSI across all manufacturing
# lots is statistically different from population mean of 1500 lbs PSI
t.test(suspensiondata$PSI,mu=1500)

# Create t.test using subset for each lot
t.test(subset(suspensiondata,Manufacturing_Lot=="Lot1")$PSI,mu=1500)
t.test(subset(suspensiondata,Manufacturing_Lot=="Lot2")$PSI,mu=1500)
t.test(subset(suspensiondata,Manufacturing_Lot=="Lot3")$PSI,mu=1500)
