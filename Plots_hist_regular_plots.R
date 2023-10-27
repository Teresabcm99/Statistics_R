#plots with R inbuit functions
#data or manufactured or obtained from r databases

a<-c(120,20,150,60,36)
b<-c(200,120,40,60,150)
plot(a,b)

library("nycflights13")
nycflights13::flights
attach(nycflights13::flights)
#creating elaborate plots
#main is for the heading of the plot, xlab= x axis heading, ylab= y lable axis

plot(arr_delay,dep_delay, main="Arrival vs Departure Delay", 
     xlab="Arrival Delay", ylab="Departure Delay")

abline(0,1)
#abline to add lines to the plot (y intercept, and slope)
#in order to remove ablines plot again withoput the abline


#adding layers to the plot


#Changing Plot Character (pch=) 1. Circle 2. Triangle 3. Plus 4. Cross 5. Diamond, 6. Reverse triangle 7. Box and crossed

plot(arr_delay,dep_delay, main="Arrival vs Departure Delay", 
     xlab="Arrival Delay", ylab="Departure Delay", pch=3)

#Filtering data

plot(arr_delay[carrier=="UA"],dep_delay[carrier=="UA"])
points(arr_delay[carrier=="AA"],dep_delay[carrier=="AA"], pch=3)


#Equal scale for x and y axis. two plots at the same time

par(mfrow=c(1,2))
plot(arr_delay[carrier=="UA"],dep_delay[carrier=="UA"], main="UA", 
     xlim=c(0,1000), ylim=c(0,1000))
plot(arr_delay[carrier=="AA"],dep_delay[carrier=="AA"], main="AA",
     xlim=c(0,1000), ylim=c(0,1000))


#Plot time series
weather
plot(weather$temp)


#Histograms 
hist(distance)
#selecting n of columns #breaks
hist(distance, breaks = 10)

#Other examples
# Filter by airline
hist(distance[carrier == "UA"])