data.frame()

a=c(12,14,16,18)
b=c(11,15,1,20)
c= a>b
print(c)

ifelse(c,"up","down")
if (c){
  print("up")
}else {
  print("down")

}


a=data.frame(first=c(1,2,2,3,4,5,NA),second=c(6,7,7,8,9,10,NA))
subset(na.omit(a),a$first<45,select = c("first","second"))

a
na.omit(a)


plot(a$first,a$second)

b<-append(c(1:10),c(5,6,2,3)) 

category<-c("Undergraduate","graduate","postgraduate")
count<-c(100,200,190)

student<-data.frame(category,count)

barplot(category,student$count)


counts <- table(mtcars$gear)
counts
barplot(counts, main="Car Distribution", 
        xlab="Number of Gears")

hist(a$first)


mtcars

summary(mtcars$disp)

outliers<-mtcars$disp <326
outliers
index<-which(outliers)

removeOutlier<- mtcars$disp[index]
removeOutlier

subset(mtcars,mtcars$disp<326,select = c("disp"))


a<- within(mtcars, mtcars$mpg-mtcars$disp)


mtcars

x<- mtcars


tipu <- function(x,...) {
  
  ellipsis.args <- list(...)
 if(length(ellipsis.args$hello)<=1){
   stop("Invalid argument xxx")
 }
  #ellipsis.args$isrow
  #ellipsis.args$iscol
  
  return (ellipsis.args)
  
}

list.arg <- tipu("hello", hello = "" , isrow =TRUE, iscol = FALSE)



y<-5

logme<-function(x){
  
  print(y)
  if(y == 5)
  {
    stop("Exceeded limit")
  }
  y<-y+1
  return (Recall(sqrt(x)))
}


logme(100000)




attach(mtcars)

plot(wt, mpg)

?plot

plot(mtcars)

cars

?lm

attach(mtcars)
#plot(wt, mpg) 
#abline(lm(mpg~wt))
v<-lm(mpg~wt)
v[5]
length(v)
title("Regression of MPG on Weight")

?abline

plot(c(0,0), c(0,0), xlab = "x", ylab = "y")
abline(a=2,b=3)

hist(mtcars[order(mpg),c("mpg")],xlab= "Milage" , ylab="Fequeency")

gear_mgp <- mtcars[mtcars$mpg< 20 & mpg >15,c("mpg","gear")]
tapply(gear_mgp$mpg,gear_mgp$gear,length)
y<-tapply(gear_mgp$mpg,gear_mgp$gear,mean)

bar<-aggregate(mpg ~ gear,mtcars,mean)

count<-table(gear_mgp$mpg,gear_mgp$gear)

barplot(height = bar$mpg,names.arg = bar$gear,xlab = "Gear",ylab = "Mileage",legend.text = bar$gear,col = c("red","green","blue"))




hist(mtcars$mpg,breaks = 10,col = "red")

seq(1,100,length=40) 

typeof(mtcars)
dim(mtcars)
length(mtcars)
?mtcars

row.names(mtcars)

require(graphics)
pairs(mtcars, main = "mtcars data")
coplot(mpg ~ disp | as.factor(cyl), data = mtcars,
       panel = panel.smooth, rows = 1)

x <- matrix(1:12,3,4)

y <- as.data.frame(x)

colnames(y) <- c("car","bus","truck","train")
rownames(y) <- c("car1","bus1","truck1")


dotchart(mtcars$mpg,labels=row.names(mtcars),cex=.7,
         main="Gas Milage for Car Models", 
         xlab="Miles Per Gallon")

row.names(mtcars)



x<-mtcars[order(mpg),]
x$cyl <- factor(x$cyl) # it must be a factor
x$color[x$cyl==4]<-"red"
x$color[x$cyl==6]<-"green"
x$color[x$cyl==8]<-"blue"

dotchart(mtcars$mpg,labels = row.names(mtcars),cex = 0.6,
         main = "Gas Mileage for car models",xlab = "Miles per Gallon"
         ,color = x$color,groups= x$cyl)


v<-table(mtcars$gear)



# Stacked Bar Plot with Colors and Legend
counts <- table(mtcars$am, mtcars$gear)
barplot(counts, main="Car Distribution by Gears and VS",
        xlab="Number of Gears", col=c("darkblue","red"),
        legend = rownames(counts))

