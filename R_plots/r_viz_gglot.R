# Script for data visualtization portion of SWC lesson
# 11/12/2017

install.packages("ggplot2")
library("ggplot2")

gapminder <- read.table("../Data/gapminder.txt",header=TRUE)

ggplot(gapminder,aes(x=year,y=lifeExp,color=country)) + geom_point(show.legend=FALSE)

#adding layers

ggplot(gapminder,aes(x=year,y=lifeExp,color=country)) + 
       geom_point() +
       geom_line() +
       theme(legend.position = "none")

#All lines are black 

ggplot(gapminder,aes(x=year,y=lifeExp)) + 
  geom_point(aes(color=country)) +
  geom_line(color="black") +
  theme(legend.position = "none")

#Adding Text

ggplot(gapminder,aes(x=year,y=lifeExp,color=country)) + 
  geom_point() +
  theme(legend.position = "none") +
  labs(x='Year',       y='Life Expectancy',      title="Figure 1")


#Manipulate scales

ggplot(gapminder,aes(x=gdpPercap,y=lifeExp)) + 
       geom_point(show.legend=FALSE)+
       scale_x_log10()

#Show Correlation

ggplot(gapminder,aes(x=gdpPercap,y=lifeExp)) + 
       geom_point(show.legend=FALSE)+
       scale_x_log10()+
       geom_smooth(method="lm")

#Faceting the data
starts.with <- substr(gapminder$country,start=1,stop=1)
az.countries <- gapminder[starts.with %in% c("A","Z"),] 


ggplot(data=az.countries,aes(x=year,y=lifeExp,color=country)) + 
  geom_point() +
  facet_wrap(~country)+
  theme(legend.position = "none")
