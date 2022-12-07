# P2 Scatterplot AQI and Life Expectancy B.5
library(tidyverse)
library(dplyr)
library(ggplot2)
library(ggrepel)
library(plotly)
set.seed(42)
air_pollution_life_expect <- read.csv("../project-team-8-section-aa/data/air pollution life expectancy.csv")

#Code for scatter plot
sp_aqi <- ggplotly(ggplot(air_pollution_life_expect, aes(x=AQI.Value, y=Life.expectancy, label=Country)) + 
           geom_point() +
           labs(
             x = "AQI Value",
             y = "Life Expectancy",
             title = "Life Expectancy in Relation to AQI Value"
           ))
print(sp_aqi)
