# Project Proposal Group 8 Section AA 

### code name: _life_vs_air_

# What Factors Affect Life Expectancy?

## Authors:
* Corey (chuco7@uw.edu)
* Jameson (jjack11@uw.edu)
* Soro (sorokim@uw.edu)

## Affiliation: Students from INFO-201
November 9th Autumn 2022

## Abstract:
Our main question we want to answer is does the pollutants in our air have a strong impact on how long that you will live. This is a huge problem that we have seen first hand with the rise of pollutants from human’s everyday living as well as the extreme weather conditions that produce fires and release more pollutants into the air. We plan to draw attention to the consequences of our actions by seeing if there is a strong relationship to having a lower life expectancy in more polluted environments. By using the Life Expectancy data, AQI - Air Quality Index data set, and an air pollution level data set, we hope to see a correlation between the quality of the air and life expectancy. 

## Keywords: 
* Life Expectancy
* Air Quality - AQI
* Air Pollution
* Country

## Introduction:

With the datasets presented we hope to see out how much the air we breathe affects our life. To do this we will analyze countries based on their life expectancy then compare that to the quantity of air pollution by country as well as the current AQI indexes per country and see if there is a relationship between countries with lower air quality and lower life expectancies. We also set out to see how strong this relationship is to try to estimate the magnitude of impact it has on our life expectancy

## Problem Domain: 

1. https://phys.org/news/2020-07-air-pollution-greatest-global-life.html#:~:text=Air%20pollution%20cuts%20life%20expectancy%20for%20every%20man%2C,quality%20is%20%22the%20greatest%20risk%20to%20human%20health%22.
1. https://pubmed.ncbi.nlm.nih.gov/24014226/
1. https://www.airnow.gov/aqi/


### Setting

The setting that we are choosing to base our project on is global since we are comparing the qualities of different countries to each other. We choose this broad of a setting for our project because this is an issue that affects everyone on this planet as well as is it easier to view these variables through a country scope since smaller area data may be harder to attain. 

### Project Framing
Through exploring this topic, we’re going to be simplifying what affects life expectancy, narrowing it down to only a couple of factors that we are limited to the data sets that we chose. We realize that we are talking about a limited factor that influences whereas life expectancy is much more than the actual heath factors such as, working out, and diet, but more so diseases that may affect a population. We are also framing the project from the perspective of choosing to assess air pollution through the two data sets for air quality that include a current AQI index as well as pollution measurements from various years and various locations. We will look at estimated averages of data per country to simplify. We think that AQI is a great estimate of Air quality because it is used very universally and has a relatively self-explanatory scale as shown below in the table [3]
We will also look at more specific measurements given in pm 2.5, 10, NO2 (ug/m^3) to get a closer look at maybe which particles have the most effects



### Human Values
We are all people, but for this project people living in these countries are just generalized through numbers. We do not mean to dehumanize any country based on these factors, but just trying to observe the correlation between life expectancy data and a few factors that may affect life expectancy as a whole. This in reality is a much larger, much more complex issue that involves thousands of factors that we are not taking into account other than just air quality. As well as Air Quality has a lot of other values that do not necessarily reflect on the way of life as a negative it could mean that certain companies are producing much of the problem for example. But this is an important issue because air quality is an issue that has cut “life expectancy for every man, woman and child on Earth by nearly two years” [1]. We want to take a closer look at the data to see if the countries with the worst air quality are the ones bringing that average down.

### Direct and indirect Stakeholders
Some direct stakeholders would be a political analyst that may use our project to push some sort of agenda that a specific country has a higher life expectancy through the relationship it might have with social issues or relating factors. Another direct stakeholder would be companies with factories to produce goods in some of these countries, changing the quality of the air by burning fossil fuels.  
	Indirect stakeholders would be the countries that were shown to have higher or lower life expectancy based on the factors that we chose, as well as people who will see this data and draw assumptions from the factors we are comparing to life expectancy. 

### Harms 
It could frame certain countries in a bad light in a more complex situation that goes into life expectancy. Because there are many factors to something like air quality that we aren’t exploring and a lot of other health factors that in these data sets will not be shown to support life expectancy. 

### Benefits
If the data presents any interesting relationships between life expectancy and the variables that we’ve chosen. Very generally we get to explore what makes someone live longer. It will also just point more and more, hopefully, that bad air quality is associated with a loss of quality of life expectancy much like it has shown in research by Murat Darcin where he used quality of life as the measurable variable that was affected by Air Quality [2]

## Research Questions:

## Is there a correlation between Air Pollution and life expectancy?
This question we want to answer is motivated by the decreasing air quality that is being caused by the release of harmful chemicals into the air. Showing that there is a correlation would point to how much of a problem air pollution is.

## Can we measure the relationship between Air quality and life Expectancy?
If we answer this question it would show not only that air quality is actively affecting our health but how much is this affecting our health. Hopefully being able to answer this question will only show the public or whoever sees this that Air Pollution is a huge problem for everyone

## Is there a stronger relationship for certain pollutants and its effect on life expectancy?
By measuring the relationship between different particles we can try to show which are the most detrimental to human health. In doing this we can point out some of the most harmful processes that are attributing to a decrease in life expectancy

## Dataset 

### Life Expectancy (WHO)
https://www.kaggle.com/datasets/kumarajarshi/life-expectancy-who

**Who collected the data?**
* Kumar Rajarshi

**When?** 
* Not sure when the data was collected, but the person who collected the data showed where they got the data.  They are going over years 2000-2015 for different countries 

**For what purpose?**
* The data was collected for the purpose of comparing life expectancy to the immunization of diseases as well as infant and adult mortality rates

**How was the data collection effort funded?**
* The actual data was funded by WHO to track various variables and overall health statistics of countries around the world

**Who is likely to benefit from the data or make money?**
* Those that are likely to benefit from the data are those like us that are trying to show a relationship between just one of the health statistics, in our case life expectancy, or want to directly show the relationship between the recorded disease immunizations and life expectancy

**How was the data validated and held secure?**
* It said that the data was scraped through the WHO website which has been made public

**Is it credible and trustworthy?**
* I believe that the data is reliable because I can find the exact data on the website of WHO which is a reliable source

**How did you obtain the data?**
 * We got the data from Kaggle.com

**Do you credit the source of the data?**
* I do credit the source of the data, WHO organization
* Shows Life expectancy by country from different years including 2000-2015

| Name  | Life Expectancy |
| ------------- |:-------------:|
| Number of Observations (rows)     | 2938    |
| Number of Variables    | 22     |

### Air Pollution Level
https://www.kaggle.com/datasets/totoro29/air-pollution-level

Shows air pollution level for different country in multiple different cities from different years including 2000 to 2021
Includes (pm 2.5 ug/m^3, pm 10 ug/m^3, NO2 ug/m^3)

**Who collected the data?**
* Nikhil Anand

**When?** 
* Air pollution levels are collected from various years from 2000 -2016

**For what purpose?**
* It does not have much documentation other than showing the columns for different measurements of air pollution but I would assume that it has been created to provide usable data to show the magnitude of pollution in different cities within different countries

**How was the data collection effort funded?**
* This data is not available

**Who is likely to benefit from the data or make money?**
* Those who want to show how much the air is being polluted or make claims based on those values, negative or positive ones

**How was the data validated and held secure?**
* The data has the public domain license attached

**Is it credible and trustworthy?**
* I do not trust this data whole heartedly because the documentation is scarce and has a lot of missing values which you can assume that the data was collected from multiple different sources which we also don’t know if it is reliable

**How did you obtain the data?**
* We got the data from Kaggle.com

**Do you credit the source of the data?**

| Name  | Air Pollution Level |
| ------------- |:-------------:|
| Number of Observations (rows)     | 32.2 thousand   |
| Number of Variables    | 10    |

### Global Air Pollution
https://www.kaggle.com/datasets/hasibalmuzdadid/global-air-pollution-dataset

Current pollution levels by country for 11/02/2022

**Who collected the data?**
* HASIB AL MUZDADID

**When?** 
* 11/02/2022

**For what purpose?**
* The introduction of the data talks about how air pollution is a very harmful problems so I assume that the data set was made to point out this fact 

**How was the data collection effort funded?**
* The funding for the data comes from elichens.com and then was webscraped by the owner of the data set

**Who is likely to benefit from the data or make money?**
* Same as above those who want to show how much the air is being polluted or make claims based on those values, negative or positive ones

**How was the data validated and held secure?**
* It was collected from elichens.com

**Is it credible and trustworthy?** 
* I do believe that the data is credible given the company that the data comes from is a green company and would support the collection of this air pollution data

**How did you obtain the data?**
* We got the data from Kaggle.com

**Do you credit the source of the data?**
* They got the data from elichens.com

| Name  | Global Air Pollution |
| ------------- |:-------------:|
| Number of Observations (rows)     | 23 thousand   |
| Number of Variables    | 12    |

## Expected Implications 
Assuming we answer our research questions it would put pressure on certain countries for their failure to produce a better air quality. It also would motivate policy makers or concerned parties to also pressure certain companies that are some of the biggest contributors to these air pollution problems. It would also motivate policy makers to promote alternative processes for example like how to produce energy by using greener techniques

## Limitations 
The limitations of our project mainly come from the data sets itself. First of all the WHO data set only has data from 2000 to 2015 which is fine on its own but the data from the 2nd and 3rd data set cover from 2016-2022, 2022 respectively is where we may have to assume some irrational facts based on the temporal coverage of the data. This means that for the Air Pollution Level data we will have to one side create a reasonable estimate of a countries life expectancy based on the latest data and on the other hand we will have to compare it to a reasonable estimate of air pollution data based on an average from different cities. As well as compare the AQI data from 2022 to earlier life expectancies from at the latest 2015. All these considered will introduce error into the model and reduce the validity of any claims