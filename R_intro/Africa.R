myDataFull <- read.table("../Data/gapminder.txt",header=TRUE)
Af <- myDataFull[myDataFull$continent=="Africa",]
Eu <- myDataFull[myDataFull$continent=="Europe",]

barplot(Af$gdpPercap,Af$year,col="blue")
