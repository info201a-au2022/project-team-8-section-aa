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
              
   output$scatter <- renderPlotly({
     scatter <- if (input$radio == "AQI Value") {
        return(sp_aqi)
      } else if (input$radio == "PM2.5 Value") {
        return(sp_pm_le)
      } else if (input$radio == "Ozone") {
        return(sp_oz_le)
      }
   })
  
  output$plot2 <- renderPlotly({
    plot_2 <- ggplotly(ggplot(
      data = grouped_aqi_category3 %>%
        filter(AQI.Category == input$var_p2),
      aes(x=AQI.Category, y=averagelife_expectancy)) +
        geom_bar(stat="identity", fill="steelblue") +
        labs(
          x = "AQI Category",
          y = "Average Life Expectancy",
          title = "AQI Category in Relation to Average Life Expectancy",
          
    )
    )
    theme_minimal()
    print(plot_2)
  })
  
  output$plot_3 <- renderPlotly({
    plot_3 <- if (input$var_p3 == "AQI Value") {
      return(AQI_map)
    } else if (input$var_p3 == "PM2.5 Value") {
      return(PM2.5AQI_map)
    } else if (input$var_p3 == "Ozone") {
      return(OZ_AQI_map)
    }
  })
  
  output$aqi <- renderPlotly({
    sp_aqi
  })
  output$pmaqi <- renderPlotly({
    sp_pm_le
  })
  output$ozaqi <- renderPlotly({
    sp_oz_le
  })
  output$aqibar <- renderPlotly({
    AQIbar
  })
  output$map1 <- renderPlotly({
    AQI_map
  })
  output$map2 <- renderPlotly({
    PM2.5AQI_map
  })
  output$map3 <- renderPlotly({
    OZ_AQI_map
  })
}