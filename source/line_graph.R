# P2: Chart B.6 
# Designs and builds a chart that is intentionally designed to answer a 
# particular question. Chart meets standards described above, and insights are 
# clearly described in the index.Rmd file.

# Descriptive paragraph
# Includes purpose (why it's included)
# Includes insights (what information is revealed)

library(dplyr)
library(tidyverse)
library(ggplot2)
library(hrbrthemes)
library(DT)
library(plotly)

global_air_pollution <- read.csv("../data/global air pollution dataset.csv")
air_pollution_countries2 <- air_pollution_countries[!duplicated(group_countries$Country),]
air_pollution_no_cities <- air_pollution_countries2[,-2]
air_pollution_no_cities_no_duups <- air_pollution_no_cities[!duplicated(air_pollution_no_cities$Country),]
life_expectancy <- read.csv("../data/Life Expectancy Data.csv")

# Grouping the Life Expectancy and Air Pollution by Country

