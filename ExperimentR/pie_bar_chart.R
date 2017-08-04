#------------------
# Data Preparation
#------------------

#Read datasets
#Download the data from http://www.saedsayad.com/datasets/CreditData.zip
train <- read.csv("../../Sample data/CreditData/Credit_train.csv")
test <- read.csv("../../Sample data/CreditData/Credit_test.csv")

#Rows and Cols
dim(train)
dim(test)

#Columns name
colnames(train)
colnames(test)

#Show  
head(train)
head(test)

#------------------------------------------------------
# Data Exploration - Univariate analysis - Categorical
#------------------------------------------------------

#Statistics
summary(train)
summary(test)

#Credit Default
plot(train$DEFAULT, main="Credit Default", sub="train", xlab="DEFAULT", col="yellow")
plot(test$DEFAULT, main="Credit Default", sub="test", xlab="DEFAULT", col="brown")

#BUSTYPE
plot(train$BUSTYPE, main="Type of small business", sub="train", xlab="BUSTYPE", col="darkgreen")
plot(test$BUSTYPE, main="Type of small business", sub="test", xlab="BUSTYPE", col="brown")

print(train$BUSTYPE)
?plot
