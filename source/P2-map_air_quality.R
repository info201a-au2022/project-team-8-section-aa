#Making the Map for P2
library(tidyverse)
library(ggplot2)
library(maps)

#creating the map of the world
world_coordinates <- map_data("world")

#importing the data of the life expectancy and the air quality
air_pollution_life_expect <- read.csv("../data/air pollution life expectancy.csv")
view(air_pollution_life_expect)
#create the world map with ggplot()

ggplot(map_data_country,aes(x=long, y=lat, group = group)) +
  geom_polygon(fill = "green", color = "lightblue") 

air_df <- air_pollution_life_expect %>%
  rename(region = Country) %>%
  filter()

airmapdf <- left_join(map_data('world'), air_df)

airmapdf2 <- airmapdf[,-6, -7]


AQI_map <- ggplotly(ggplot(airmapdf2,aes(x=long, y=lat, group = group)) +
           geom_polygon(aes(fill = AQI.Value), color = "purple") +
           scale_fill_viridis_c(option = 'C'))
print(AQI_map)
View(airmapdf2)