#Height of student

student_height<-c(152,168,136,210,198,158,157,152)
#mean(student_height)
#Reviewing Data Types
#Numeric(integers/decimal numbers called floating types)
#characters- 'sr' or "LOL"
#Logical - TRUE, FALSE (T, F)
#Complex - 2+3i
#Use class () function to check the data type
#%/%2  exact number
#5%%2 = da el resto= reminder

#Descriptive & Inferential Stats
student_height
mean(student_height)
student_hegt1<-c(100,106,121,111,109,103,117,114,NA,1047)
mean(student_hegt1, trim=0.1, na.rm=TRUE) #trim removes extreme values, na.remove takes out NA
median(student_hegt1, na.rm)
sort(student_height)
table(student_height)#frequency of numbers,#repetitions
#how to calculate mode
a<-table(student_height)
sort(a,decreasing=T)
sort(a,decreasing =T)[1]#look for first element
range(student_height)
quantile(student_height)  #checking quantiles
IQR(student_height)  #(interquantile range)
sd(student_height) #standar deviation (variability)
length(student_height)
n<-length(student_height)
sd(student_height)*sqrt((n-1)/n)


# Example creating variables
machine1<- c(151.2,150.5,149.2,147.5,152.9,152.0,151.3,149.7,149,150.7)
machine2<-c(151.9,151.4,150.3,151.2,151.0,151.2,151.4,150.4,151.7)

#descriptive stats Machine 1
mean(machine1)
sd(machine1)
range(machine1)
quantile(machine1)
IQR(machine1)
range(machine1)

#descrptive stats Machine2
mean(machine2)
sd(machine2)
range(machine2)
quantile(machine2)
IQR(machine2)
range(machine2)

#plotting to se more clearly # to see both at the same time
par(mfrow=c(1,2))
hist(machine1, main="Machine1", xlim= c(145,155))
hist(machine2, main="Machine2", xlim= c(145,155))
#assuming estimated volume quantity is 150ml per bottle machine 2 has better accuracy than M1