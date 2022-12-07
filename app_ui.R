library(shiny)
library(ggplot2)
library(plotly)
library(dplyr)

#You will need an intro page that shows up first
#Followed by 3 interactive pages based off your graph
#A summary takeaway page
# A report page

# This is the code for the intro panel
intro_panel <- tabPanel(
  "Introduction",
  titlePanel("The Effects of Air Pollution on Life Expectancy"),
  mainPanel(
    includeMarkdown('../project-team-8-section-aa/docs/Introduction_Markdown.md')
  )
)


# This is where the code starts for the first interactive panel
graph1_input <- selectInput(
  inputId = "radio",
  label = "Select An AQI Category",
  choices = c("AQI Value", "PM2.5 Value", "Ozone"))
  # to do
  selected = "AQI Value"


first_int_sidebar_content <- sidebarPanel(
  graph1_input,
  print("These scatter plots show all the values that we used to analyze the 
        pollutants in the air vs. life expectancy. The table includes the 
        country, the AQI value, and the corresponding categorization, the PM2.5 
        value, and the Ozone value. From the plots, we tried to find general 
        comparisons between the AQI and other pollutants. AQI being a 
        generalization for how hazardous the air is to breath. We used a linear 
        regression line to quantify the relationships between various parameters 
        for air quality against life expectancy. 
        Where AQI is x and life expectancy is y, y = -0.01065x + 72.415,
        Where PM2.5 is x and the life expectancy is y, y = -0.01385x + 72.623,
        Where Ozone is x and the life expectancy is y, y = -0.07938x + 69.164,
        multiple R-squared = 0.0038, 0.00684, 0.044")
)

first_int_main_content <- mainPanel(
  plotlyOutput("scatter")
)

first_int_panel <- tabPanel(
  "Pollutants",
  titlePanel("Air Pollutants vs. Life Expectancy"),
  sidebarLayout(
    first_int_sidebar_content,
    first_int_main_content
  )
)

# This is where the code starts for the second interactive panel
graph2_input <- selectInput(
  inputId = "var_p2",
  label = "Select An AQI Category",
  choices = c(unique(grouped_aqi_category3["AQI.Category"])),
  # to do
  selected = "Good"
)

second_int_sidebar_content <- sidebarPanel(
  graph2_input,
  print("The WHO (World Health Organization), categorizes the different 
        categories for AQI from the AQI values into 5 different categories which
        are, Good, Moderate, Unhealthy for sensitive groups, Unhealthy, and 
        Hazardous, for the sake of our analyzation, we chose to not include
        the one Hazardous piece of data due to it being an outlier. Each of the
        bars is an average of all the differnt life expectancies for countries
        wihtin a given AQI category to assess if in general, life expectancy
        goes down as AQI goes up.")
)

second_int_main_content <- mainPanel(
  plotlyOutput("plot2")
)

second_int_panel <- tabPanel(
  "AQI Categories",
  titlePanel("AQI Categories vs. Life Expectancy"),
  sidebarLayout(
    second_int_sidebar_content,
    second_int_main_content
  )
)


# This is where the code starts for the third interactive panel
graph3_input <- selectInput(
  inputId = "var_p3",
  label = "Select An AQI Category",
  choices = c("AQI Value", "PM2.5 Value", "Ozone"))
# to do
selected = "AQI Value"


third_int_sidebar_content <- sidebarPanel(
  graph3_input,
  print("This map distinguishes between AQI values for each country using a color 
        scheme with yellow being higher AQI values, and purple being lower AQI
        values, this was made to easily distinguish the countries with the highest
        AQI as well as lowest AQI.")
)

third_int_main_content <- mainPanel(
  plotlyOutput("plot_3")
)

third_int_panel <- tabPanel(
  "Map of AQI",
  titlePanel("Global Map of AQI"),
  sidebarLayout(
    third_int_sidebar_content,
    third_int_main_content
  )
)

# This is where the code starts for the summary panel
# Note: All summary graphs are interactive as well, but not to the same extent as interactive pages
## (only to the extent of normal plotly graphs!)

summary_main_content <- mainPanel(
  h3("Pollutants"),
  print("Our first takeaway is that the relationship defined by the linear regression of the data is very hard to draw conclusions
        from given that the correlation is low. You can also see this in the scatter plots in a way you cannot discern any noticable patterns."),
  p(" "),
  plotlyOutput("aqi"),
  p(" "),
  plotlyOutput("pmaqi"),
  p(" "),
  plotlyOutput("ozaqi"),
  h3("AQI Categories"),
  print("If you look at all four averages that we included within the bar graph, you can see that in general, the life expectancy lowers with a lower quality of air.
        This is not always true though since we can see that the life expectancy for the Unhealthy for Sensitive Groups is lower than the Unhealthy category which
        represents a worse air quality. Again we see that the relationship has little correlation and does not take into account the many variables that influence life expectancy of a country."),
  p(" "),
  plotlyOutput("aqibar"),
  h3("Map of AQI"),
  print("From the map the most obvious takeaways are the colors that stand out the most in the extremity of the scale, showing a general state of how many unhealthy AQI values countries have.
        For example India and Mexico is showing up as a brighter yellow than other countries, meaning that is has one of the worst air qualities. On the other hand it also shows countries with
        the lowest AQI values depicted in a dark purple. For example, Canada, Argentina, and Australia."),
  p(" "),
  plotlyOutput("map1"),
  p(" "),
  plotlyOutput("map2"),
  p(" "),
  plotlyOutput("map3"),
  h3("Assumptions"),
  print("Some key assumptions that we need to recognize in order to understand where some error may have neen introduced into our analysis, is that the data is from 2015 and only this year which may not accruately represent how air pollution has affected life expectancy over time.
        As well as the pollutant data was taken from different cities within countries which didn't allow us to merge both the life expectancy and air pollution data frames together, only taking the highest AQI values that were recorded within each country, only represent these given cities and aren't fully represented of the whole country.")
)

summary_panel <- tabPanel(
  "Summary",
  titlePanel("Our Takeaways From The Data"),
  summary_main_content
)

# This is where the code starts for the report panel
report_panel <- tabPanel(
  "Report Panel",
  titlePanel("Report Panel"),
  mainPanel(
    includeMarkdown('../project-team-8-section-aa/docs/Summary_Markdown.md')
  )
)

# This is where the ui is defined
ui <- navbarPage(
  "Life vs. Air",
  intro_panel,
  first_int_panel,
  second_int_panel,
  third_int_panel,
  summary_panel,
)
