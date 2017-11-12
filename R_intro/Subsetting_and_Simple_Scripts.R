#### COMMANDS FOR SUBSETTING AND WRITING SIMPLE R SCRIPTS #########

menuItems <- c("chicken","soup","salad","tea")
menuType <- factor(c("solid","liquid","solid","liquid"))
menuCost <- c(4.99, 2.99, 3.29, 1.89)
myOrder <- list(menuItems,menuType,menuCost)

myOrder_df <- data.frame(menuItems,menuType,menuCost)
myOrder_df

#### Subsetting
#### By Position Index

v <- c(10:20)
v
v[7]
v[7:10]
v[-c(7:10)]
myOrder[1]
myOrder[3]
myOrder_df
myOrder_df[2,3]
myOrder_df[,3]
myOrder_df[3,]


#By Name

myOrder_df$menuItems


#By Logical Vectors
# <
# >
# ==
# <=
# >=

v <- c(1,2,3,4,5,6)
v1 <-v[v==5]
df1 <- myOrder_df[myOrder_df$menuType=="liquid",]
df1
myOrder_df$menuCost
df2 <- myOrder_df[myOrder_df$menuCost<3,]
df2
myData <- read.table("../Data/gapminder.txt",header=TRUE)
myData
head(myData,5)
csv_data <- read.csv("C:/Users/Dheeral/Downloads/RetLog_000.csv.csv")
dim(myData)

#1
str(myData)
#2
typeof(myData)

#3
third_fifth=myData[,c(3,5)]


#4
first=unique(myData[,1])
first=unique(myData$country)
#5
sweden <- myData[myData$country=="Sweden",]

#6
below70 <- myData[myData$lifeExp<70,]
#7
new_col=myData[,5]/1000000



