# P2 Scatterplot Ozone AQI and Life Expectancy B.7
library(tidyverse)
library(dplyr)
library(ggplot2)
library(ggrepel)
library(plotly)
set.seed(42)
air_pollution_life_expect <- read.csv("../project-team-8-section-aa/data/air pollution life expectancy.csv")

#Code for scatter plot
sp_oz_le <- ggplotly(ggplot(air_pollution_life_expect, aes(x=Ozone.AQI.Value, y=Life.expectancy, label=Country)) + 
                     geom_point() +
                     labs(
                       x = "Ozone AQI Value",
                       y = "Life Expectancy",
                       title = "Life Expectancy in Relation to the Ozone AQI Value"
                     ))



