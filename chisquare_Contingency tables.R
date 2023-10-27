#Contingency tables, relationship btw 2 discrete variables
#order of meals in breakfast, lunch and dinner in 3 days

brkfast<-c(22,28,72)
lunch<-c(26,62,22)
dinner<-c(24,40,36)

#create data frame to hold data

meals<-data.frame(brkfast,lunch,dinner, row.names=c("day1", "day2","day 3"))

chisq.test(meals)
#chiq.sq value 40.561, p value 3.31^-8
#reject null hypothesis

#critical value 95% for confidence level looking for right tail values
qchisq(0.05, df=4, lower.tail = F)

#value 9.48
#data visualization
visualize.chisq(stat = 40.561, df=4, section="upper")


#creating consolidating tables
install.packages("gmodels")
library("gmodels")

#use data from R for the example
library(nycflights13)
#obtain data related to flights
fly<-nycflights13::flights
#data visualization
head(fly)
#create cross tables 1 carrier vs year, 2 carrier vs month
#Contingency tables (data table comparing two variables, help to suggest possible correlations)
CrossTable(x=fly$carrier, y=fly$year)
CrossTable(x=fly$carrier, y=fly$month)

#managing data in cross table cleaning data

CrossTable(x=fly$carrier,y=fly$month, prop.chisq = F, prop.r=F, prop.c=F, prop.t = F, chisq = T)
#removes unwanted data from rows, coulmns and provides the row total, column total, overall total
# +chisquare value