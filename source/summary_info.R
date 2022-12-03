# Summary Information Script B.2
library(dplyr)
library(tidyverse)

#
life_expectancy <- read.csv("../data/Life Expectancy Data.csv")
air_pollution <- read.csv("../data/Air Pollution.csv")
global_air_pollution <- read.csv("../data/global air pollution dataset.csv")

summary_info <- list()

#Top Country with the highest air pollution (global air pollution dataset)
summary_info$worst_air_country <- global_air_pollution %>% 
  filter(AQI.Value == max(AQI.Value)) %>% 
  pull(Country)

#Country with the lowest Life Expectancy
summary_info$worst_life_expectancy <- life_expectancy %>% 
  filter(Life.expectancy == min(Life.expectancy)) %>% 
  pull(Country)


worst_air_country <- global_air_pollution %>% 
  filter(AQI.Value == max(AQI.Value)) %>% 
  pull(Country)
print(worst_air_country)
