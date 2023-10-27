#F- test checking variances of two samples
#concentration of substance in water at two diff places in a river
#variance diff of concentration when conf level is 90%
#Assumption of equal variance

subs.side1<-c(149,150,157,160,149,152,154,153)
sd(subs.side1)
mean(subs.side1)

subs.side2<-c(152,149,161,158,156,157,155,151)
var(subs.side2)
mean(subs.side2)

var.test(x=subs.side1, y=subs.side2, ratio=1, conf.level = 0.90)
#p value higher than 0.10 (p value at 90%) so fail to reject null
#equal variances

#How to manually calculate F test
#Higher variance in numerator
var.test(x=subs.side2, y=subs.side1, ratio=1, conf.level = 0.90)
#calculate F value
Fcal<-var(subs.side2)/var(subs.side1)
Fcal


# Obtaining F critical using R inbuilt functions (rf (random number), pf (probability),qf (opposite of pf),df(vertical height))
#function F crit gives critical value
Fcrit<-qf(p=0.05,df1=7, df2=7, lower.tail = F) #looking at right tail

#Compare Fcal to Fcrit to :fail to reject or reject null

#plot F distribution # remember two samples so two diff degrees of freedom
x<-seq(0,10)
df(x,df1=7, df2=7)

#data visualization
plot(df(x,df1=7, df2=7), type="l", xlab="F value", ylab="Density")
boxplot(subs.side1, subs.side2)

