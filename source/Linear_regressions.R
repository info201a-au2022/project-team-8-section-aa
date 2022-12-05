air_life_csv <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-team-8-section-aa/main/data/air%20pollution%20life%20expectancy.csv")
View(air_life_csv)
#Linear Regression
#Variables
AQI_value <- air_life_csv$AQI.Value
life_expectancy <- air_life_csv$Life.expectancy
Ozone_value <- air_life_csv$Ozone.AQI.Value
PM_2.5 <- air_life_csv$PM2.5.AQI.Value

life_exp.AQI.lm <- lm(life_expectancy ~ AQI_value)

summary(life_exp.AQI.lm)
#Residuals:
#  Min      1Q  Median      3Q     Max 
#-20.904  -6.310   2.505   5.822  16.448 

#Coefficients:
#  Estimate Std. Error t value Pr(>|t|)    
#(Intercept) 72.41473    1.15110  62.909   <2e-16 ***
#  AQI_value   -0.01065    0.01329  -0.801    0.424    
#---
#  Signif. codes:  
#  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

#Residual standard error: 8.364 on 165 degrees of freedom
#Multiple R-squared:  0.003875,	Adjusted R-squared:  -0.002162 
#F-statistic: 0.6419 on 1 and 165 DF,  p-value: 0.4242

life_exp.Ozone.lm <- lm(life_expectancy ~ Ozone_value)

summary(life_exp.AQI.lm)
#Residuals:
#  Min      1Q  Median      3Q     Max 
#-19.434  -6.207   1.447   5.687  15.678 

#Coefficients:
#  Estimate Std. Error t value Pr(>|t|)    
#(Intercept) 69.16375    1.09523  63.150  < 2e-16 ***
#  Ozone_value  0.07938    0.02850   2.786  0.00597 ** 
#  ---
#  Signif. codes:  
#  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

#Residual standard error: 8.19 on 165 degrees of freedom
#Multiple R-squared:  0.04492,	Adjusted R-squared:  0.03913 
#F-statistic:  7.76 on 1 and 165 DF,  p-value: 0.005967


life_exp.PM.lm <- lm(life_expectancy ~ PM_2.5)

summary(life_exp.PM.lm)
#Residuals:
#  Min      1Q  Median      3Q     Max 
#-20.959  -6.356   2.319   5.722  16.498 

#Coefficients:
#  Estimate Std. Error t value Pr(>|t|)    
#(Intercept) 72.62385    1.11759  64.982   <2e-16 ***
#  PM_2.5      -0.01385    0.01300  -1.066    0.288    
#---
#  Signif. codes:  
#  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

#Residual standard error: 8.352 on 165 degrees of freedom
#Multiple R-squared:  0.006837,	Adjusted R-squared:  0.0008177 
#F-statistic: 1.136 on 1 and 165 DF,  p-value: 0.2881