#GDP for ALbania using the gapminder.txt

filename <- '../Data/gapminder.txt'
gapminder <- read.table(filename , header=TRUE)
countryName <- "Algeria"
albaniaData <- gapminder[gapminder$country==countryName,]

albaniaGDP <- albaniaData$gdpPercap

albaniaAverageGDP <- mean(albaniaGDP)

print(paste("The average GDP of", countryName,"is", albaniaAverageGDP))
