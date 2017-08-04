# This R file will be deployed in production environment

#Model is read from saved models
library("jsonlite")
new_x1 <- readRDS("x.Rds") # the path of rds file will be read from config file 

print(new_x1)

#will come from client in json format
newdata<-data.frame(Sepal.Length=14,Sepal.Width=155,Petal.Length=144,Petal.Width=133)

output<-predict(new_x1, newdata,type="class")

serializedOutput=serializeJSON(output, digits = 8, pretty = FALSE)

output1 <- unserializeJSON(serializedOutput)
