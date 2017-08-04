data("AirPassengers")

data("discoveries")

library("ggplot2")
#ls()
#rm(list = ls())
#data("diamonds")
getwd()
stateData<-read.csv("./sampledata/statedata.csv")

summary(stateData)

newstateData<-within(stateData,{density<-stateData$area / stateData$population})
orderedSateData<-newstateData[order(newstateData$density),]

plot(orderedSateData$illiteracy,orderedSateData$income)
highLiteracyStates<-newstateData[newstateData$illiteracy<1.5,]
OrderhighLiteracyStates<-newstateData[order(newstateData$illiteracy),]

subset(stateData,illiteracy == 0.5,)

x <- stateData[stateData$highSchoolGrad < 50,]


a<- mtcars[mtcars$mpg>=30 | mtcars$hp<60,]

redditData<-read.csv("./sampledata/reddit.csv")

barplot( table(redditData$employment.status))
str(redditData$age.range)
levels(redditData$age.range)
levels(redditData$education)
factor(levels(redditData$age.range),ordered = FALSE)
?factor

is.factor(redditData$age.range)

redditData$age.range <- factor(redditData$age.range,levels = c("Under 18","18-24" ,"25-34","35-44","45-54","55-64","65 or Above")) 
qplot(data=redditData,x=redditData$age.range)
?qplot
factor(x,ordered=TRUE)



pseudo_facebook<-read.csv("./sampledata/pseudo_facebook.tsv.txt",sep = "\t")

qplot(data=pseudo_facebook,x=friend_count,xlim = c(0,1000))
 

qplot(data=subset(pseudo_facebook,!is.na(gender)),x=friend_count,binwidth = 25)+
      scale_x_continuous(limits  = c(0,1000),breaks = seq(0,1000,50)) +
  facet_wrap(~gender)

qplot(data=na.omit(pseudo_facebook),x=friend_count,binwidth = 25)+
  scale_x_continuous(limits  = c(0,1000),breaks = seq(0,1000,50)) +
  facet_wrap(~gender)

table(pseudo_facebook$gender)

 ?qplot

x <- aggregate(pseudo_facebook$friend_count ~ pseudo_facebook$gender,data=pseudo_facebook,summary)

y <- as.matrix(x)

barplot(y)

yearwisecount<- aggregate(pseudo_facebook$dob_year ~ pseudo_facebook$dob_year,data=pseudo_facebook,length)

by(pseudo_facebook$friend_count,pseudo_facebook$gender,summary)

qplot(x=pseudo_facebook$tenure,data= pseudo_facebook , binwidth=50 ,main="Facebook Tenure Distribution",
      color=I('black'), fill=I('blue'), xlab = "Tenure" , ylab = "Frequency")+
  scale_x_continuous(limits= c(0,2500), breaks = seq(0,2500,100))

tenure<- pseudo_facebook[order(pseudo_facebook$tenure),]

pseudo_facebook <- within(pseudo_facebook,{tenure_in_year <- tenure/365})

qplot(x=pseudo_facebook$tenure_in_year,data=pseudo_facebook, binwidth=1,
      color=I("black"),fill=I("green"))+
  scale_x_continuous(limit=c(0,8),breaks= seq(0,10,0.5))

qplot(x=pseudo_facebook$age,data=pseudo_facebook, binwidth=1,
      color=I("black"),fill=I("green"))+
  scale_x_discrete(breaks= seq(0,113,5))


qplot(x=pseudo_facebook$friend_count,data=pseudo_facebook, binwidth=200,
      color=I("black"),fill=I("green"))+
  scale_x_continuous(breaks= seq(0,2000,200))
# Transforming and scaling to log10 and sqrt
qplot(x=log10(pseudo_facebook$friend_count),data=pseudo_facebook,
      color=I("black"),fill=I("blue"))

qplot(x=sqrt(pseudo_facebook$friend_count),data=pseudo_facebook,
      color=I("black"),fill=I("green"))

seq(0,120,5)

pseudo_facebook$
round(0.4)

sys.date

?difftime
Sys.time() 
Sys.Date()

a <-round(difftime(Sys.time(),"2014-02-12 12:57:36 IST")/365)





qplot(data =subset(pseudo_facebook,!is.na(gender)),x=pseudo_facebook$www_likes,geom = 'freqpoly',
      color=gender)+
  scale_x_log10()
#scale_x_continuous(breaks = seq(0,4,0.1))+
  
by(pseudo_facebook$www_likes,pseudo_facebook$gender,sum)

aggregate(pseudo_facebook$www_likes~pseudo_facebook$gender,pseudo_facebook,sum)
summary(pseudo_facebook$www_likes)





qplot(data =pseudo_facebook,y=pseudo_facebook$www_likes,x=pseudo_facebook$gender,geom = 'boxplot')

by(pseudo_facebook$friendships_initiated,pseudo_facebook$gender,summary)
      
qplot(data =pseudo_facebook,y=pseudo_facebook$friendships_initiated,x=pseudo_facebook$gender,geom = 'boxplot')+
coord_cartesian(ylim = c(0,230))

mobile_checkin <- NA

pseudo_facebook$mobile_checkin <- ifelse(pseudo_facebook$mobile_likes>0,1,0)
pseudo_facebook$mobile_checkin <- factor(pseudo_facebook$mobile_checkin)
pie(summary(pseudo_facebook$mobile_checkin))

?pie

63947/(63947+35056)

sum(pseudo_facebook$mobile_checkin == 1)/length(pseudo_facebook$mobile_checkin)



