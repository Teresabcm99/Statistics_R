#Testing hypothesis
#Z-test sample over 30 &| variance, sd is known
#Data is obatained from private data set, yet example has been left to display how to calculate and infer testing and variable placing in the code

#Examples portrayed through exercises

#Example: bottles produce 150ml and sd is 2ml, n=100 bottles, mean=152. Has vol increased?
#Null H mean of vol is = or <150
#Check with 95% confidence level
library(readr)
perfume_volume<-read.csv("Insert datapath you need to load csv")
perfume_volume

mean(perfume_volume$Machine1)

#Given no z-test in R there are 2 ways, opt 1 calculate according to theory
zvalue<-(152-150)/(2/sqrt(100))
zvalue

qnorm(0.05) #z value is 1.64, so reject null hypothesis, vol has increase

#Option 2 to calculate z test using BSDA library
library("BSDA")
z.test(x=perfume_volume$Machine.1, alternative = "greater", sigma.x = 2, mu=150)


#T-Tests
#t-test sample size less than 30 and sd is unknown

# plot a t distribution example (data maufactured)
q<- seq(-4.0,4.0, by=0.1)
dt(q,3) #function distribution in t test

plot(q, dt(q,19), type="l", lty="solid", xlab="t", ylab="f(t)")
lines(q,dt(q,9), type="l", lty="dashed")
lines(q, dt(q,4), type="l", lty="dotted")

#Hypothesis testing using T-test example
#Volume bottles 150ml, sample 4 bottles (151,152,152,153)
#Increased vol?

vol_bot<-c(151,152,152,153)
t.test(x=vol_bot, mu=150, conf.level = 0.095)
#look at p value to fail to reject or reject the null Ho

#visualize result
library(visualize)
visualize.t(stat=c(-4.899,4.899), df=3, section="tails") #value in stats is value from t-test

#sd difference/ chi square(one sample vs population sample/F-test(two variance)
#Exercise example: 25 bottles with variance 5ml. sd is known to be 4 at 95% confidence level
#Has sd increased?
#variables used in this example come from a private file, variables left to serve as an example
library(EnvStats)
library(readr)


vol_var<-read.csv("/load data path")
var(vol_var$Volumes)#obtain sd
varTest(x=vol_var$Volumes, sigma.squared= 4,alternative = "greater") #variabiliry test

#calculate chi square without packages
calc<-(25-1)*var(vol_var$Volumes)/4
#there are 4 R functions for chi square (rchisq,pchiq,qchisq,dchisq)

crit<-qchisq(p=0.05,df=24,lower.tail=F)#critical value

xchi<-seq(1,50,by=1)
ychi<-dchisq(xchi,24)

#data visualization 
plot(ychi,type="l", xlab="Chi square", ylab="f(chi sq)")
abline(v=30)
text(30, 0.05,"calculated")
abline(v=crit)
text(crit,0.04,"critical=0.95")


#two sample z-test
library(BSDA)
#data file vol in ml in machines,  both machines equal means of vol?
perfume_vol2<-read.csv("load your data path here") #Left variables for example, data comes from private data file

z.test(x=perfume_vol2$Machine.1,
       y=perfume_vol2$Machine.2,
       sigma.x = sd(perfume_vol2$Machine.1),
       sigma.y = sd(perfume_vol2$Machine.2)
       )
#data visualization #box/whisker plot and or histogram
boxplot(x= perfume_vol2)
#overlap histogram
hist(x=perfume_vol2$Machine.1,
     density=50,
     angle=45,
     col="red")
hist(x=perfume_vol2$Machine.2,
     main="volumes by machine 1 and 2",
     xlim=c(140,160),
     ylab="Frequency",
     xlab="volume",
     density=10,
     angle=135,
     add=T,
     col="blue")

# two sample z- test for when mu1 and mu2 difference is not 0
#First machine is supposed to make 150ml and second 151ml (mu1-mu2=-1)

z.test(x=perfume_vol2$Machine.1,
       y=perfume_vol2$Machine.2,
       sigma.x = sd(perfume_vol2$Machine.1),
       sigma.y = sd(perfume_vol2$Machine.2),mu=-1.0)



#Alternate hypothesis testing
#Lower tail test <- to see area of value obtained in normal distribution falls to left tail (lower tail)
#upper tail test<-to see area of value obtained in normal distribution falls to right tail (upper tail)
#two tailed test<- to see if area of value obatained falls in one of the tails