sqrt(18)
print("Hello there \n")
print(44)
print("wow")
hello
install.packages("knitr")
library(knitr)
?print
help("mean")
?library
#variable db
price <- 3.99
price
name <- db
mass <- 70
ls()
rm(db)
db
rm(name)
rm(list=ls())
?rm
res <- sqrt(64)
res=sqrt(8)
str(res)
str(8)
typeof(res)
score <- 67
is.integer(score)
lscore <- 55
typeof(is.integer(score))
v <- c(1:10)
v
length(v)
str(v)
first_two=head(v,n=2)
first_two
tail(v,n=3)

#manipulate
v <- c(v,56)
v
#vectorization
v1 <- v*2
v1
#change a data type
v2 <- as.character(v1)
v2
#matrices
m <- matrix(c(1:18),3,6)
dim(m)
#factor
f=factor(c("M","F","F"))
f
str(f)
#list
l <- list("New Zealand",1989,7878)
