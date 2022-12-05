# P2 Scatterplot AQI and Life Expectancy
library(tidyverse)
library(dplyr)
library(ggplot2)
library(ggrepel)
set.seed(42)
air_pollution_life_expect <- read.csv("../data/air pollution life expectancy.csv")

#Code for scatter plot
sp_oz_le <- ggplotly(ggplot(air_pollution_life_expect, aes(x=Ozone.AQI.Value, y=Life.expectancy, label=Country)) + 
                     geom_point() +
                     labs(
                       x = "Ozone AQI Value",
                       y = "Life Expectancy",
                       title = "Life Expectancy in Relation to the Ozone AQI Value"
                     ))
print(sp_oz_le)



