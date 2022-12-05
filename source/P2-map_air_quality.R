#Making the Map for P2
library(tidyverse)
library(ggplot2)
library(maps)

#creating the map of the world
world_coordinates <- map_data("world")

#importing the data of the life expectancy and the air quality
global_air_pollution <- read.csv("../data/global air pollution dataset.csv")
air_pollution_countries2 <- air_pollution_countries[!duplicated(group_countries$Country),]
air_pollution_no_cities <- air_pollution_countries2[,-2]
air_pollution_no_cities_no_duups <- air_pollution_no_cities[!duplicated(air_pollution_no_cities$Country),]
life_expectancy <- read.csv("../data/Life Expectancy Data.csv")
life_expectancy_2015_semiclean <- life_expectancy_2015[,-6:-17]
life_expectancy_2015_clean <- life_expectancy_2015_semiclean[,-7:-10]
air_pollution_life_expect <- merge(life_expectancy_2015_clean, air_pollution_no_cities_no_duups, by=c("Country"))

#create the world map with ggplot()
map_data_country <- map_data('world')[map_data('world')$region == country,]
ggplot() +
  geom_map(
    data = world, map = world, 
    aes(long, lat, map_id = region),
    color = "lightgray", fill = "gray"
  )+
  geom_point(
    data = air_pollution_life_expect,
    aes(longitude, latitude, color = )
  )