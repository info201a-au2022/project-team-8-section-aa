# P2 Scatterplot AQI and Life Expectancy
library(tidyverse)
library(dplyr)
library(ggplot2)
global_air_pollution <- read.csv("../data/global air pollution dataset.csv")
air_pollution_countries2 <- air_pollution_countries[!duplicated(group_countries$Country),]
air_pollution_no_cities <- air_pollution_countries2[,-2]
air_pollution_no_cities_no_duups <- air_pollution_no_cities[!duplicated(air_pollution_no_cities$Country),]
life_expectancy <- read.csv("../data/Life Expectancy Data.csv")
life_expectancy_2015_semiclean <- life_expectancy_2015[,-6:-17]
life_expectancy_2015_clean <- life_expectancy_2015_semiclean[,-7:-10]
air_pollution_life_expect <- merge(life_expectancy_2015_clean, air_pollution_no_cities_no_duups, by=c("Country"))

#Code for scatter plot

#change the point size, and shape
ggplot(air_pollution_life_expect, aes(x=AQI.Value, y=Life.expectancy)) +
  geom_point(size=2, shape=23)
#label points 
ggplot(air_pollution_life_expect, aes(x=AQI.Value, y=Life.expectancy)) + 
  title(main = 'Life Expectancy in Relation to AQI Value') + 
  geom_point() +
  geom_text(label = air_pollution_life_expect$Country) 