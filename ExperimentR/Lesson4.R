library("ggplot2")
data("diamonds")
dim(diamonds)
summary(diamonds$price)
name<-names(diamonds)
b<-c()
for(n in name)
{
  b<-append(b,is.factor(n))
  print(n)
}
is.factor(diamonds[,"color"])
str(diamonds)


qplot(data=diamonds,x=diamonds$price,color=I('black'),fill=I('blue'),
      xlab = "Price",main = "Diamond price distribution")+
  scale_x_log10()
  #scale_x_continuous(breaks = seq(0,20000,1000))




summary(diamonds$price<500)
summary(diamonds$price<250)
summary(diamonds$price>=15000)

diamonds[diamonds$price == 326,c("price","cut")]



qplot(data=diamonds,x=diamonds$price,color=I('black'),fill=I('blue'),binwidth=1,
      xlab = "Price",main = "Diamond price distribution")+
  #scale_x_log10()
  scale_x_continuous(limits = c(1400,2010),breaks = seq(1400,2010,50))

summary(diamonds$price)

mod(diamonds$price)
#data <- c(rnorm(100,mean=20),rnorm(100,mean=12))

qplot(data=diamonds,x=diamonds$price,color=I('black'),fill=I('blue'),binwidth=500,
      xlab = "Price",main = "Diamond price distribution")+
  #scale_x_log10()
  scale_x_continuous(limits = c(0,19000),breaks = seq(0,19000,5000)) +
  facet_wrap(~diamonds$cut,scales="free_y")

by(diamonds$price,diamonds$cut,median)






# In the two last exercises, we looked at
# the distribution for diamonds by cut.

# Run the code below in R Studio to generate
# the histogram as a reminder.

# ===============================================================

qplot(x = price, data = diamonds) + facet_wrap(~cut)

# ===============================================================

# In the last exercise, we looked at the summary statistics
# for diamond price by cut. If we look at the output table, the
# the median and quartiles are reasonably close to each other.

# diamonds$cut: Fair
#    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#     337    2050    3282    4359    5206   18570 
# ------------------------------------------------------------------------ 
# diamonds$cut: Good
#    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#     327    1145    3050    3929    5028   18790 
# ------------------------------------------------------------------------ 
# diamonds$cut: Very Good
#    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#     336     912    2648    3982    5373   18820 
# ------------------------------------------------------------------------ 
# diamonds$cut: Premium
#    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#     326    1046    3185    4584    6296   18820 
# ------------------------------------------------------------------------ 
# diamonds$cut: Ideal
#    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#     326     878    1810    3458    4678   18810 

# This means the distributions should be somewhat similar,
# but the histograms we created don't show that.

# The 'Fair' and 'Good' diamonds appear to have 
# different distributions compared to the better
# cut diamonds. They seem somewhat uniform
# on the left with long tails on the right.

# Let's look in to this more.

# Look up the documentation for facet_wrap in R Studio.
# Then, scroll back up and add a parameter to facet_wrap so that
# the y-axis in the histograms is not fixed. You want the y-axis to
# be different for each histogram.

# If you want a hint, check out the Instructor Notes.

?facet_wrap

