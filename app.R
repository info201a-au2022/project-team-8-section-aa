library(shiny)
library(ggplot2)
library(plotly)
library(dplyr)
library(ggmap)
library(markdown)
source("app_server.R")
source("app_ui.R")

#Summary takeaway graphs
source('../project-team-8-section-aa/source/P2_barchart.R')
source('../project-team-8-section-aa/source/P2_scatterplot_air_quality_vs_life_expectancy.R')
source('../project-team-8-section-aa/source/P2_scatterplot_ozone_air_quality_vs_life_expectancy.R')
source('../project-team-8-section-aa/source/P2_scatterplot_pm_air_quality_vs_life_expectancy.R')
source('../project-team-8-section-aa/source/P2-map_air_quality.R')
source('../project-team-8-section-aa/source/P2-map_pm_air_quality.R')
source('../project-team-8-section-aa/source/P2-map_oz_air_quality.R')

shinyApp(ui = ui, server = server)
