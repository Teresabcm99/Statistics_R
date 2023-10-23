#Vectors,Factors,List,Matix,Data Frame
#Working Vectors
#checking data types
is.numeric()
is.character()
is.logical()

#converting data types
as.numeric()
as.character()
as.logical()

#Working Factors
student.height<-c(100,106,121,111,109, 111,103,117,114)
summary(student.height)#provides quartile and min and max values

airports<-c('DEL', 'CAL','NYC', 'CAL','DEL','DEL')
summary(airports)
#Factor changes the characters to categories
#Levels of data: Nominal, Ordinal, Interval, ratio
#Nominal is category without order
#ordinal is category with order

airport.fact<-factor(airports)
summary((airport.fact))

#example ordinal
birth.month= c("March", "April","January","November","September","October","May","October","September", "February","January")
summary(birth.month)
birth.month.fact<-factor(birth.month)
summary(birth.month.fact)
#put in order
birth.month.fact<-factor(birth.month, ordered=TRUE, levels=c("January","February","March","April","May","June","July","August","September","October","November","December"))
summary(birth.month.fact)
table(birth.month.fact)

#List
a1<-c(1,4,6)
b1<-c('Red','Green')
c<-"welcome"
#combine list
my.list<-list(a1,b1,c)
my.list.n<-list(Pieces=a,Colors=b1,Message=c)#categorized elements in list
#calling a specific data structure|Indexing
my.list.n[1]
my.list.n['colors']
my.list.n$Colors

#Matrix
stu.hours<-c(20,24,46,62,22,37,45,27,65,23)
stu.marks<-c(40,55,69,83,27,44,61,33,71,37)
#Matrix Function
stu.matrix<-matrix(stu.hours)
stu.matrix

#Jopin to columns as stu.data
stu.data<-c(stu.hours,stu.marks)
stu.matrix<-matrix(stu.data)
stu.matrix
#create rows
stu.matrix<-matrix(stu.data, nrow=10)
stu.matrix
#data filled by columns
#data filled by row
stu.matrix<-matrix(stu.data, byrow =T, nrow=10)#Undo byrow=F

#Naming rwos and columns
colnames(stu.matrix)<-c('Hours', 'Marks')
rownames(stu.matrix)<-c(1:10)
#selecting an element from matrix
stu.matrix[5,2] #[column,row]
#create a matrix by importing cvs file
a_read<-read.csv('insertdirectory')

#Data Frames
stu.name<- c('Mr1','Mr2','Mr3','Mr4','Mr5','Mr6','Mr7','Mr8','Mr9','Mr10')
stu.hours<-c(20,24,46,62,22,37,45,27,65,23)
stu.marks<-c(40,55,69,83,27,44,61,33,71,37)
stu.male<-c(T,F,F,T,F,F,T,F,T,T)

stu.data<-data.frame(stu.name,stu.hours,stu.marks,stu.male)

#Datahandling with data frames
View(stu.data)
summary(stu.data)
mean(stu.data$stu.hours)#Obtain mean of a column
#Indexing or obtaining data from specific rwo
stu.data[3,1]#by row
stu.data[,2]#by column

#export data from csv to data frame
df<- read.csv('insert directory')


#Exercise generating data
#Create vector contaning odd numbers from 4 to 500
#Option A

vf<-c((500%%2)==4)

vf<-c()
for (i in 4:500){
    if (i%%2 !=0){
      vf<-c(append(vf,i))
    }
  } 

#OptionB
vf<-c(seq(4,500, by=2))
  
#Creating data fram from 2 vectors  
sta.hours <- c(20,24,46,62,22,37,45,27,65,23)
sta.marks <- c(40,55,69,83,27,44,61,33,71,37)
sta.data.frame<-data.frame(sta.hours,sta.marks)
sta.data.frame
