#P2 Linear Regression Scatterplot 2 PM2.5
library(tidyverse)
library(dplyr)
library(ggplot2)
library(ggrepel)
air_pollution_life_expect <- read.csv("../data/air pollution life expectancy.csv")

#Code for scatter plot

#change the point size, and shape
ggplot(air_pollution_life_expect, aes(x=AQI.Value, y=Life.expectancy)) +
  geom_point(size=2, shape=23)
#label points 
sp_pm_le <- ggplotly(ggplot(air_pollution_life_expect, aes(x=PM2.5.AQI.Value, y=Life.expectancy, label=Country)) + 
                     geom_point() +
                     labs(
                       x = "PM2.5 AQI value",
                       y = "Life Expectancy",
                       title = "Life Expectancy in Relation to PM2.5 AQI Value"
                     ))

print(sp_pm_le)