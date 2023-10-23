#central limit theorem
r<- runif(1000)#genrate random number in normal distribution
hist(r)
meanr<-mean(r)
sdr<-sd(r)

#Draw three random samples form r and calculate mean
sample(r,4)
mean(sample(r,4))

#take the mean of these sample
cl14<-mean(sample(r,4))
for (i in 1:1000){
  cl14<-c(cl14,mean(sample(r,4)))
}

hist(cl14)
meancl14<-mean(cl14)
sdcl14<-mean(cl14)

#Including 9 items
cl9<-mean(sample(r,9))
for (ir in 1:1000){
  cl9<-c(cl9, mean(sample(r,9)))
}

hist(cl9)
meancl9<-mean(cl9)
sdcl9<-sd(cl9)


#Include 100 items
cl100<-mean(sample(r,100))
for (ir in 1:1000){
  cl100<-c(cl100, mean(sample(r,100)))
}

hist(cl100)
meancl100<-mean(cl100)
sdcl100<-sd(cl100)

#Create a summary of the data in charts

par(mfrow=c(2,2))

hist(r, main="1 Sample")
mtext(sdr, side=3)
mtext(meanr, side=4)

hist(cl14, main="4 Sample")
mtext(sdcl14, side=3)
mtext(meancl14, side=4)


hist(cl9, main="9 Sample")
mtext(sdcl9, side=3)
mtext(meancl9, side=4)

hist(cl100, main="100 Sample")
mtext(sdcl100, side=3)
mtext(meancl100, side=4)


#Normal probability distribution
#rnorm, pnorm,qnorm,dnorm functions
#standard normal distibution has mean=0 sd=1 and is the default
#pnorm is for probability of element falling into one of the tails of the distribution 
#to find out z values yo use qnorm
#dnorm gives you the value in the x axis
#Randomly generated probability distribution


rnorm(10)

rnorm(10, mean=100, sd=1)#obtaining random numbers according to criteria previously established

#Pnorm, probability according to z values
pnorm(0)

pnorm(-1.96)

#To obtain z values use qnorm (obtain values based on probability)
qnorm(0.05)

#dnorm gives values for vertical axis, aids to visualize the normal distribution curve
dnorm(0)

#Plot normal distribution according to functions dnorm, qnorm etc
zvalue<-seq(-4.0,4.0, by=1)
dnorm(zvalue)
plot(zvalue,dnorm(zvalue))

plot(zvalue,dnorm(zvalue), type="l")

#area outside +3 and -3
pnorm(-3)#area in left
pnorm(3)#area in right

2*pnorm(-3)#area in left, yet because is simetrical multiply by two to obtain value for two areas


#Binomial distribution
#continuous and discrete data
#continuous variable hold value between two specified values (height)
#discrete (counts)


#binomial probability distribution (discrete distribution)
#Experiments of n repeated trials (flip coin)
#One of the possible outcomes is success (p) and the other one failure
#probability of success does not change, trials are independent and fixed number of trials

#Example
#probability of head in single flip coin info in brackets (n,x,success prob)
rbinom(10,1,0.5)

#probability of head in 10 coin flips
rbinom(10,10,0.5)

#pbinom and qbinom
#probability of 3 in 10 coin flips info in brackets (q,size, probability of success)
pbinom(3,10,0.5)

#otherway around
qbinom(0.71,10,0.5)#give probability to obtain number of success
dbinom(3,10,0.5)# probability of succes and the vertical value of the axis

n<-c(1:10)
#Example of using function dbinom to chart a binomial dikstribution based on n 

dbinom(3,10,0.5)
dbinom(n,10,0.5)
barplot(dbinom(n,10,0.5))


#Poisson distribution
#discrete variables (success or failure)
#Outcome is random is not affected by previous trials
#rare outcomes are relative to possible outcomes
#Avg number of success in the specific region (ex. time) are know
# mean and variance are = to mu


# Poison dist functions in R: rpois (random), ppois(probability and left,qpois (opposite of ppois)
#dpois(provability of that particular stance and vertical value)

#Bus stop, average of 3.6 people every 10 min on weekends. Odds of getting 7 in 10 min?

dpois(7,3.6) #info bracket(x,mu)

# or
ppois(7,3.6)-ppois(6,3.6)

#obtain prob and plot
gt<-c(0:10)
dpois(gt,3.6)
barplot(dpois(gt,3.6))

