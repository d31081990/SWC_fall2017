rm(list=ls())

fileName <- "../Data/gapminder.txt"

gapminder <- read.table(fileName,header=TRUE)

getAverageGdpPerCapita <- function(country) {
  selectedCountryData <- gapminder[gapminder$country == country, "gdpPercap"]
  mean(selectedCountryData)
}

southAmericanCountries <- c('Argentina', 'Bolivia', 'Brazil', 'Chile', 'Colombia', 'Ecuador', 'Paraguay', 'Peru', 'Uruguay', 'Venezuela') 

averageGDPSouthAmericanCountries <- sapply(southAmericanCountries,getAverageGdpPerCapita)
averageGDPSouthAmericanCountries

averageGDPSouthAmericanCountries <- averageGDPSouthAmericanCountries[order(averageGDPSouthAmericanCountries)]

barplot(averageGDPSouthAmericanCountries,las=2)
