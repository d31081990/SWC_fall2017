#GDP for country

rm(list=ls())

fileName <- "../Data/gapminder.txt"

gapminder <- read.table(fileName,header=TRUE)

getAverageGDPperCapita <- function(country){

  selectCountryData <- gapminder[gapminder$country==country,"gdpPercap"]
  mean(selectCountryData)
}

gdpUSA <- getAverageGDPperCapita("United_States")
gdpCanada <- getAverageGDPperCapita("Canada")
gdpMexico <- getAverageGDPperCapita("Mexico")

print(paste('GDP of USA is',gdpUSA))
print(paste('GDP of CAnada is',gdpCanada))
print(paste('GDP of Mexico is',gdpMexico))

