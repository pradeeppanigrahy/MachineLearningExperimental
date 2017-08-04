library(ggplot2)
pf<-read.csv("./sampledata/pseudo_facebook.tsv.txt",sep = "\t")
#rm(list = ls())
ggplot(aes(x=pf$age,y=pf$friend_count),data = pf)+
  #geom_point()
  geom_point(alpha=1/20)+
  coord_trans(y = "sqrt")

 # facet_wrap(~gender)
  
summary(pf$friend_count)

?coord_trans()

ggplot(aes(x=age,y=friendships_initiated),data = pf) + 
  geom_point(alpha=1/20, position = 'jitter')
  #coord_trans(y= 'sqrt')

library(dplyr)


#function chaining
pf.fc_by_age <- pf%>%
  group_by(age)%>%
  summarise(mean=mean(friend_count),
            median=median(friend_count),
            count=n()) %>%
  arrange(age)

head(pf.fc_by_age)

ggplot(aes(x=age,y=mean),data=pf.fc_by_age)+geom_line()+
  scale_x_continuous(breaks = seq(13,100,5))


#help.search('%.%')



ggplot(aes(x=age,y=friend_count),data = pf) + 
  xlim(13,90)+
  coord_trans(y= 'sqrt')+
  geom_point(alpha=0.05, position = position_jitter(h=0),color='orange')+
  geom_line(stat ='summary',fun.y=mean,color='black')+
  geom_line(stat ='summary',fun.y = quantile,fun.args=list(probs=0.5),linetype=2,color='blue')+
  geom_line(stat ='summary',fun.y = quantile,fun.args=list(probs=0.9),linetype=2,color='green')+
  geom_line(stat ='summary',fun.y = quantile,fun.args=list(probs=0.1),linetype=2,color='yellow')
  

?geom_line



cor(pf$age,pf$friend_count)


ggplot(data=pf,aes(x=pf$www_likes_received,y=pf$likes_received))+
  geom_point(alpha=1/20)+
  xlim(0,quantile(pf$www_likes_received,0.95))+
  ylim(0,quantile(pf$likes_received,0.95))+
  geom_line(stat='summary',fun.y=mean,color="orange")+
  geom_line(stat='summary',fun.y=quantile,fun.args=list(probs=0.1),color="blue")+
  geom_smooth(method = 'lm',color='red')

cor.test(pf$www_likes_received,pf$likes_received)

library(alr3)


head(Mitchell)

ggplot(aes(x=Month,y=Temp),data=Mitchell)+
  geom_line()
  #scale_x_discrete(breaks=seq(0,203,12))+


cor.test(Mitchell$Month,Mitchell$Temp)

sd(c(1,2,3,4,5))

sd(c(6,7,8,9,10))


iris

exp(2)

a<-c(1:10)
b<- exp(a)
c<-log(a)

plot(a,b)
plot(a,c)

d<-c(-1:-10)
plot(d,exp(d))

rpois()

