# Summary Information Script B.2
library(dplyr)
library(tidyverse)

#Datasets
life_expectancy <- read.csv("../data/Life Expectancy Data.csv")
air_pollution <- read.csv("../data/Air Pollution.csv")
global_air_pollution <- read.csv("../data/global air pollution dataset.csv")
air_pollution_life_expect <- read.csv("../data/air pollution life expectancy.csv")

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

#Make a data frame with life expectancy and AQI
air_pollution_countries <- read.csv("../data/global air pollution dataset.csv")
air_pollution_countries2 <- air_pollution_countries[!duplicated(group_countries$Country),]
air_pollution_no_cities <- air_pollution_countries2[,-2]
air_pollution_no_cities_no_duups <- air_pollution_no_cities[!duplicated(air_pollution_no_cities$Country),]
View(air_pollution_no_cities_no_duups)

life_expectancy_2015 <- life_expectancy %>%
  filter(Year == "2015")

life_expectancy_2015_semiclean <- life_expectancy_2015[,-6:-17]
life_expectancy_2015_clean <- life_expectancy_2015_semiclean[,-7:-10]

#The Key Dataframe that has the AQI and Life Expectancy of Countries 2015
air_pollution_life_expect <- merge(life_expectancy_2015_clean, air_pollution_no_cities_no_duups, by=c("Country"))

write.csv(air_pollution_life_expect, "../data/air pollution life expectancy.csv", row.names = TRUE)

