library(nycflights13)
nycflights13::flights
attach(nycflights13::flights)

#Using R libraries to carry out plots

#boxplot
boxplot(distance)
#boxplot filtering data
boxplot(distance[carrier=="UA"])
boxplot(distance[carrier=="AA"])


#Plot side by side
par(mfrow=c(1,2))
boxplot(distance[carrier=="UA"], main="UA")
boxplot(distance[carrier=="AA"], main="AA")

#adjusting the scales
boxplot(distance[carrier=="UA"], main="UA", ylim=c(0,5000))
boxplot(distance[carrier=="AA"], main="AA", ylim=c(0,5000))

#Four plots Box and Histogram for UA and AA box and whisker plot
par(mfrow=c(2,2))
boxplot(distance[carrier=="UA"], main="UA", ylim=c(0,5000))
boxplot(distance[carrier=="AA"], main="AA", ylim=c(0,5000))
hist(distance[carrier=="UA"], main="UA", breaks=c(0,1000,2000,3000,4000,5000), 
     xlim=c(0,5000), ylim=c(0,30000))
hist(distance[carrier=="AA"],main="AA", breaks=c(0,1000,2000,3000,4000,5000), 
     xlim=c(0,5000), ylim=c(0,30000))

#boxplot of distance by carrier
par(mfrow=c(1,1))
boxplot(distance~carrier)
