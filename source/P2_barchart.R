# P2 Bar Graph B.4
library(ggplot2)
library(dplyr)
library(plotly)
air_pollution_life_expect <- read.csv("../project-team-8-section-aa/data/air pollution life expectancy.csv")

#grouped aqi category life expectancy
grouped_aqi_category <- group_by(air_pollution_life_expect, AQI.Category) %>%
  summarise(
    averagelife_expectancy = mean(Life.expectancy)
  )

#removing outliers
grouped_aqi_category2 <- grouped_aqi_category[-2,]

#code for the bar chart
AQIbar <- ggplotly(ggplot(data=grouped_aqi_category2, aes(x=AQI.Category, y=averagelife_expectancy)) +
         geom_bar(stat="identity", fill="steelblue")+
           labs(
             x = "AQI Category",
             y = "Average Life Expectancy",
             title = "AQI Category in Relation to Average Life Expectancy"
           ))
         theme_minimal()
         
    print(AQIbar)
