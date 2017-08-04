#library("party")
library("rpart")
traindata<-head(iris)
testdata<-tail(iris)

fitTree<-rpart(Species~Sepal.Length+Sepal.Width+Petal.Length+Petal.Width,iris)

print(fitTree)
saveRDS(fitTree, file="x.Rds")


#newdata<-data.frame(Sepal.Length=14,Sepal.Width=155,Petal.Length=144,Petal.Width=133)
#predict(fitTree, newdata,type="class")

#newdata2<-data.frame(Sepal.Length=c(7,8,6,5),
                                          #Sepal.Width=c(4,3,2,4),
                                          #Petal.Length=c(6,3.4,5.6,6.3),
                                          #Petal.Width=c(2,3,4,2.3))

#predict(fitTree, newdata2,type="class")
