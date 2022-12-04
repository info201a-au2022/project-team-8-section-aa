library(tidyverse)
library(dplyr)
# Table of Summary Information
air_pollution_countries <- read.csv("../data/global air pollution dataset.csv")
air_pollution_countries2 <- air_pollution_countries[!duplicated(group_countries$Country),]
air_pollution_no_cities <- air_pollution_countries2[,-2]
air_pollution_no_cities_no_duups <- air_pollution_no_cities[!duplicated(air_pollution_no_cities$Country),]
View(air_pollution_no_cities_no_duups)

View(air_pollution_no_cities_no_duups)
group__unhealthy_countries <- air_pollution_no_cities_no_duups %>% 
  select('Country', 'AQI.Category') %>% 
  filter(AQI.Category == "Unhealthy") %>%
  group_by(AQI.Category)
