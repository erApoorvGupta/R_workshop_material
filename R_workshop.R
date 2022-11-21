library()
search()
#install.packages("xml")
install.packages("XML")
print("Apoorv Gupta")
name <- "Apoorv Gupta"
paste("My name is ", name)
cat("My name is ", name)
P <- 1500
T <- 9
R <- 8.6
N <- 4
SI <- P*R*T/100  #simple interest
CI <- P*(1+(R/(N*100)))**(N*T)  #compound interest
SI
CI
################
X<- 10L
X
y = 9.5
y
t = TRUE
t
d = "apoorv"
d
z = charToRaw(d)
z
#################

print(class(X))
print(class(y))
print(class(t))
print(class(d))
print(class(z))

################
# Vectors

x <- c(1:10)
x
y <- c(10,30,25,5,19)
y

################

c(5,10)/5
x<- c(5,10)
x/5

c(10:1)
a<- c(1,2,2,3,4,5,5)
unique(a)
factor(a)
min(a)
max(a)
sum(a)
mean(a)

###############

summary(a)
a[3]<-5
a
###############
#list

movie<- list('apoorv',18,"mathew",20,c('action','drama'))
movie
movie[2]
length(movie)
movie[4]<-2020

Movie<- list(name = 'apoorv',year = 18,genre = c('action','drama'))
Movie
Movie[2]
Movie$genre
Movie["age"]<-20
Movie
Movie["age"]<-NULL
Movie

################
# array

arr<-c('avatar','zumanzi','last man standing','Zumanzi')
ma <- array(arr,dim=c(2,2))
ma
ma[1,]
ma[,2]
ma[1,2]

ma2 <- array(arr, dim=c(3,3))
ma2

ma3 <- array(arr, dim=c(3,3,3))
ma3
ma3[,2,3]

ma4 <- array(arr, dim=c(3,6))
ma4

###############
# matrix

mat <- matrix(arr, nrow = 2, ncol = 2, byrow=TRUE)
mat
mat_new <- cbind(mat, "strawberry", "blueberry")
mat_new
mat_new[1:2,1:2]

##############

df<- data.frame(Name = c('puspa','bahubali','jumanji','Avtar'),year = c(20:17))
df
df[1,]
head(df)
tail(df)

df["age"]=c(1:4)
df

df = rbind(df, c(Name = "apoorv", year = 16, age = 5))
df

df<- df[-4,] #del row
df

df['age'] = NULL #del column
df

##############

mat <- matrix(c(1:6),nrow = 2,ncol = 3, byrow = TRUE)
mat
t(mat)
mat%*%t(mat)

##############

a <- c(1:3)
b<- c(3:5)

a<b
a>b
a==b
a<=b
a>=b
a!=b

#############

age <- 15
class(age)
if(age>=18)
{
  print("you can vote")
} else
{
  print("you cannot vote")
}

#############

age <- 14

if ((as.integer(age/2))*2 == age)
{
  print("even")
} else
{
  print('odd')
}

#############

year <- 2100

if(year%% 400 == 0)
{
  print("Leap Year")
}else
{
  if(year%%4==0 && year %%100 != 0)
  {
    print("Leap Year")
  }else
  {
    print("not Leap Year")
  }
}

############

y<- 3
x<- switch(y,"gm",'gn','ge','gn')
x


y<- '7'
x<- switch(y,'12'="gm",'3'='gnoon','7'='ge','8'='gn')
x

############

add<- function(a,b)
{
  return (a+b)
}
add(5,3)