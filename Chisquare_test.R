#Chi squre test, goodness of the fit. Population in specific distribution
#How a model compares to actual observed data
#2 examples (data is manufactured)

#coin flips trial 100, heads 40 and tails 60
#Bias?

throws<-c(40,60)
chisq.test(x=throws, p=c(0.5,0.5))

#calcualted chi sq according to the formula
ch.cal<-((40-50)^2/50 + ((60-50)^2/50))
#critical value
qchisq(p=0.05, df=1, lower.tail=F)


#data visualization to show that coin is "biased"
library(visualize)
visualize.chisq(stat=4, df=1, section="upper") #stats is chi calculated value

#Example 2 

#Coffee shop, different cup sizes
#short -20%, tall 40%, large 30%, jumbo 10%
#sales data: small 240 medium 450, large 200,jumbo 120
#significant diff?

cof.percent<-c (0.2,0.4,0.3,0.1)
cof.sale<-c(240,450,200,120)

chisq.test(x=cof.sale, p=cof.percent)

#data visualization
visualize.chisq(stat=50.974, df=3, section="upper") #stat is chi calculated value
