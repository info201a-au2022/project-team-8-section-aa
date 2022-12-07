#Making the Map for P2 B.10
library(tidyverse)
library(ggplot2)
library(maps)
library(plotly)
#creating the map of the world
world_coordinates <- map_data("world")

#importing the data of the life expectancy and the air quality
air_pollution_life_expect <- read.csv("../project-team-8-section-aa/data/air pollution life expectancy.csv")

#create the world map with ggplot()
air_df <- air_pollution_life_expect %>%
  rename(region = Country) %>%
  filter()

airmapdf <- left_join(map_data('world'), air_df)

airmapdf2 <- airmapdf[,-6, -7]

OZ_AQI_map <- ggplotly(ggplot(airmapdf2,aes(x=long, y=lat, group = group, label=region)) +
                           geom_polygon(aes(fill = Ozone.AQI.Value), color = "gray") +
                           scale_fill_viridis_c(option = 'C') +
                         labs(
                           title = "Ozone AQI Values on Global Map"
                         ))
                       

