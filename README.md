# Mechacar Statistical Analysis

AutosRU's much anticipated Mechacar has run into production trouble and it is up to my team identify precisely where that trouble lies. To do so we ran several statistical analyses to see what was causing the trouble. The results of these analyses and the design of a proposed study to test Mechacar against the competition are outlined below.

## 1. Linear Regression to Predict MPG

First we looked at gas mileage. To find out what factors affected gas mileage, we used R to generate a linear regression model. Below is the output.

![d1 linear regression](https://github.com/LiShanDa2021/mechacar_statistical_analysis/blob/main/d1_linear_reg.png?raw=true)

You can see from the data above that vehicle length, ground clearance and drive train all appeared to have a significant correlation with miles per gallon (mpg), but what was the chance these correlations were simply random? To find out, we used R's summary function to create summary statistics and generate p-values, both of which are listed below.

![d1 summary](https://github.com/LiShanDa2021/mechacar_statistical_analysis/blob/main/d1_summary.png?raw=true)

From the above image you can see that although the drive-train type seemed to be negatively correlated with mpg, the p-value of .18 suggests this relationship is random (is that how this works?). The two other factors that seemed to correlate with mpg were vehicle length and ground clearance which generated very small p-values indicating that these two factors do indeed have an effect on mpg.

As a whole, this model has a p-value of 5.35x10^-11 indicating that it has a non-zero slope. The r-squared value is .71 indicating that this would be a good model for predicting the mpg of future MechaCar prototypes.

## 2. Summary Statistics on Suspension Coils

Our teams next task was to generate summary statistics on suspension coils accross all production lots and for each production lot individually. "The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch" so we want to make sure the variance in our summary statistics falls below that threshold in each lot and across all lots. Here are the summary statistics accross all production lots.

![d2 total summary](https://github.com/LiShanDa2021/mechacar_statistical_analysis/blob/main/d2_total_summary.png?raw=true)

While the variance is indeed below the 100 psi threshold, it is still fairly high at 62 psi. Below we take a closer look at the summary statistics at each lot.

![d2 lot summary](https://github.com/LiShanDa2021/mechacar_statistical_analysis/blob/main/d2_lot_summary.png?raw=true)

It is clear from the table above that lot 3 is producing the irregularities. Production on lot 3 should be thoroughly inspected to find the source.

## 3. T-Tests on Suspension Coils

We next inspected the strengths of suspension coils accross production facilities and at individual lots. The population mean for suspension coils is 1,500 psi. We need to make sure our suspension coils do not diverge too far from this number. Below is the results of a t-test across all lots.

![d3 all lots](https://github.com/LiShanDa2021/mechacar_statistical_analysis/blob/main/d3_all_lots.png?raw=true)

The p-value of this test is .06 which is not at or below the .05 threshold that would indicate a significant statistical difference for our purposes. However, it is low enough that we should investigate the individual lots further.

![d3 lot 1](https://github.com/LiShanDa2021/mechacar_statistical_analysis/blob/main/d3_lot1.png?raw=true)

In lot 1, the p-value is 1 indicating a high probability that any variance here is random.

![d3 lot 2](https://github.com/LiShanDa2021/mechacar_statistical_analysis/blob/main/d3_lot2.png?raw=true)

In lot 2, the p-value is .6 which also suggests random variation.

![d3 lot 3](https://github.com/LiShanDa2021/mechacar_statistical_analysis/blob/main/d3_lot3.png?raw=true)

Again, lot 3 seems to be the problem. With a significant p-value of .04 we reject the null hypothesis that the variance is random. Something at lot 3 seems to be contributing to lower product quality.

## 4. Study Design: MechaCar vs Competition

Now that we have identified the likely source of production problems for the MechaCar, our team would like to propose a statistical study to compare MechaCar to the competition. In our study we will compare one metric that will be of particular interest to the consumer: fuel-efficiency. Fuel-efficiency has become increasingly important and will only continue to do so.

Our study will compare both the highway and city mpg of our vehicles against that of the competition. Our null hypothesis will be that both MechaCar's highway and city mpg will be statistically different 

cost
multiple linear regression

safety



What is the null hypothesis or alternative hypothesis?
What statistical test would you use to test the hypothesis? And why?
What data is needed to run the statistical test?
