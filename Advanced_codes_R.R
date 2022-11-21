datasets::airquality
install.packages("airqualityES")
library(airquality)
View(airquality)
row.names(airquality)
colnames(airquality)
str(airquality)
sum(is.na(airquality))
table(complete.cases(airquality))

##################

datasets::mtcars
View(mtcars)
sum(is.na(mtcars))
cor(mtcars$mpg, mtcars$disp)

#################

datasets::iris
install.packages(iris)
head(iris)
head(iris,n =2)
# melt and casting
install.packages("reshape2")
library("reshape2")
installed.packages('iris')
View(iris)
summary(iris)

molten.iris<-melt(iris,id=c("Species"))
molten.iris
View(molten.iris)

cast.iris<-dcast(molten.iris,Species~variable,sum)
cast.iris

install.packages("dplyr")
library("dplyr")

apply(mtcars,2,mean)
apply(mtcars,2,sum)



subject1 <- c(1:8)
subject2 <- c(11,22,33,44,55,66,77,88)
subject3 <- c(10,22,34,56,67,87,65,67)
list <- list(subject1,subject2,subject3)
list
x<-lapply(list,summary)
x

sapply(list,summary)
x2 <- mapply(summary,list)
x2

dim(mtcars)
dim(iris)

x3<- select(iris,(1:2))
x3

esub<- select(iris, -(3:5))
esub


sepal_iris <- select(iris,starts_with("sepal"))
sepal_iris

f1 <- filter(iris,Sepal.Length<250)
f1

f2 <- filter(iris,Sepal.Length<250 | Species == "virginica")
f2

f3 <- arrange(iris,Sepal.Length)  # ascending order
f3

#rename

rn<-rename(iris,SL ="Sepal.Length")
rn

#mutate
mt<- mutate(iris,Total_length = Sepal.Length+ Petal.Length)
mt

#Transmute
tmt <- transmute(iris,Total_length = Sepal.Length+ Petal.Length)
tmt