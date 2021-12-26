#deliverable 1
library(dplyr)
read.csv("MechaCar_mpg.csv")
mecha_car_df <- read.csv("MechaCar_mpg.csv")
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_car_df) #generate linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_car_df)) #generate summary statistics

#deliverable 2
library(tidyverse)
read.csv("Suspension_Coil.csv")
suspension_df <- read.csv("Suspension_Coil.csv")
total_summary <- suspension_df %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
lot_summary <- suspension_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create summary table by lot
