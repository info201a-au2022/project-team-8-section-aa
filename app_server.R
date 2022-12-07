# Remember to go to session tab and set working directory to source files location
# when you are testing any code here

library(shiny)
library(ggplot2)
library(plotly)
library(dplyr)

#Data frame for scatterplots
air_pollution_life_expect <- read.csv("../project-team-8-section-aa/data/air pollution life expectancy.csv")

#Data frame for bar graph 
grouped_aqi_category3 <- read.csv("../project-team-8-section-aa/data/grouped_aqi_category2.csv")
  
#Data frame for map
airmapdf2 <- read.csv("../project-team-8-section-aa/data/airpollmap.csv")

#choices = c(unique(airdf2["region"]))

# Define server logic required to draw a histogram
server <- function(input, output) {
  output$plot1 <- renderPlotly({
    plot_1 <- ggplotly(ggplot(
      data = air_pollution_life_expect %>%
        filter(AQI.Value == input$var_p1),
      mapping = aes_string(x = "AQI Value", y = "Life Expectancy")) +
        geom_point() +
        (ggplot(air_pollution_life_expect, aes(x=AQI.Value, y=Life.expectancy, label=Country)) + 
                   geom_point() +
                   labs(
                     x = "AQI Value",
                     y = "Life Expectancy",
                     title = "Life Expectancy in Relation to AQI Value"
                   ))
      )
    print(plot_1)
  })
  output$plot2 <- renderPlotly({
    plot_2 <- ggplotly(ggplot(
      data = grouped_aqi_category3 %>%
        filter(AQI.Category == input$var_p2),
      mapping = aes_string(x = "AQI Category", y = "Life Expectancy")) +
        geom_col() +
        labs(
          x = "AQI Category",
          y = "Average Life Expectancy",
          title = "AQI Category in Relation to Average Life Expectancy"
    )
    )
    print(plot_2)
  })
  output$plot3 <- renderPlotly({
    plot_3 <- ggplotly(ggplot(
      data = hunger_index %>%
        filter(region == input$var_p3),
      mapping = aes_string(x = "Year", y = "global_hunger_index")) +
        (ggplot(airmapdf2,aes(x=long, y=lat, group = group)) +
                   geom_polygon(aes(fill = AQI.Value), color = "purple") +
                   scale_fill_viridis_c(option = 'C'))
    )
    print(plot_3)
  })
  output$graph_1 <- renderPlotly({
    most10_child_stunting
  })
  output$graph_2 <- renderPlotly({
    AQIbar
  })
  output$graph_3 <- renderPlotly({
    AQI_map
  })
}