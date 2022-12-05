library(tidyverse)
library(dplyr)
# Table of Summary Information
air_pollution_life_expect <- read.csv("../data/air pollution life expectancy.csv")
summaryinfo <- air_pollution_life_expect %>%
  select(Country, Life.expectancy, AQI.Value, AQI.Category, PM2.5.AQI.Value, Ozone.AQI.Value)
