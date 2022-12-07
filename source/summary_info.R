# Summary Information Script B.2
library(dplyr)
library(tidyverse)

#Datasets
life_expectancy <- read.csv("../project-team-8-section-aa/data/Life Expectancy Data.csv")
air_pollution <- read.csv("../project-team-8-section-aa/data/Air Pollution.csv")
global_air_pollution <- read.csv("../project-team-8-section-aa/data/global air pollution dataset.csv")
air_pollution_life_expect <- read.csv("../project-team-8-section-aa/data/air pollution life expectancy.csv")

summary_info <- list()

#Top Country with the highest air pollution (global air pollution dataset)
summary_info$worst_air_country <- air_pollution_life_expect %>% 
  filter(AQI.Value == max(AQI.Value)) %>%
  pull(Country)

#Country with the lowest AQI
summary_info$best_air_country <- air_pollution_life_expect %>% 
  filter(AQI.Value == min(AQI.Value)) %>%
  pull(Country)

#Country with the lowest Life Expectancy
summary_info$worst_life_expectancy <- air_pollution_life_expect %>% 
  filter(Life.expectancy == min(Life.expectancy)) %>% 
  pull(Country)

#Country with the highest Life Expectancy
summary_info$best_life_expectancy <- air_pollution_life_expect %>% 
  filter(Life.expectancy == max(Life.expectancy)) %>% 
  pull(Country)

#Country with the highest Ozone
summary_info$highest_ozone <- air_pollution_life_expect %>% 
  filter(Ozone.AQI.Value == max(Ozone.AQI.Value)) %>% 
  pull(Country)

#Country with the highest PM2.5
summary_info$highest_pm2.5 <- air_pollution_life_expect %>% 
  filter(PM2.5.AQI.Value == max(PM2.5.AQI.Value)) %>% 
  pull(Country)



