# Load dplyr and tidyverse package
library(dplyr)
library(tidyverse)
# Read mechacar_mpg.csv
mechacardata <- read.csv('MechaCar_mpg.csv')
head(mechacardata)

# Use linear regression on mechampgtable
lm(mpg = vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = mechacardata)

# Determine p-value and r-squared for linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = mechacardata))

# p-value = 