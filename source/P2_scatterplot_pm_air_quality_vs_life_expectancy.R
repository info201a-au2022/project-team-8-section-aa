#P2 Linear Regression Scatterplot 2 PM2.5 B.6
library(tidyverse)
library(dplyr)
library(ggplot2)
library(ggrepel)
library(plotly)
air_pollution_life_expect <- read.csv("../project-team-8-section-aa/data/air pollution life expectancy.csv")

#Code for scatter plot
sp_pm_le <- ggplotly(ggplot(air_pollution_life_expect, aes(x=PM2.5.AQI.Value, y=Life.expectancy, label=Country)) + 
                     geom_point() +
                     labs(
                       x = "PM2.5 AQI value",
                       y = "Life Expectancy",
                       title = "Life Expectancy in Relation to PM2.5 AQI Value"
                     ))
