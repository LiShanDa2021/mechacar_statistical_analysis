library(dplyr)
read.csv("MechaCar_mpg.csv")
mecha_car_df <- read.csv("MechaCar_mpg.csv")
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_car_df) #generate linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_car_df)) #generate summary statistics
