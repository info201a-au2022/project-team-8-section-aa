# P2 Scatterplot AQI and Life Expectancy
library(tidyverse)
library(dplyr)
library(ggplot2)
library(ggrepel)
set.seed(42)
air_pollution_life_expect <- read.csv("../data/air pollution life expectancy.csv")

#Code for scatter plot

#change the point size, and shape
ggplot(air_pollution_life_expect, aes(x=AQI.Value, y=Life.expectancy)) +
  geom_point(size=2, shape=23)
#label points 
sp <- ggplot(air_pollution_life_expect, aes(x=AQI.Value, y=Life.expectancy)) + 
  geom_point() +
  geom_text(label = air_pollution_life_expect$Country) + 
  labs(
    x = "AQI Value",
    y = "Life Expectancy",
    title = "Life Expectancy in Relation to AQI Value"
  )
