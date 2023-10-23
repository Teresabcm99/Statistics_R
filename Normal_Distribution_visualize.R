# plotting normal distrubtions using pcakage visualize
install.packages("visualize")
library(visualize)

#visualizing normal distribution

visualize.norm(-2)
visualize.norm(-3)
visualize.norm(c(3,-3), section="tails")#see both sides

visualize.norm(stat=c(-3,3), 0,1, section="tails") #values in the middle are mu and sd
visualize.norm(stat=c(-1,1), 0,1, section="tails")

#Rememeber program defaults to lower (left of sigma)
visualize.norm(stat=76, mu=75, sd=1, section="upper")
visualize.norm(stat=76, mu=75, sd=1, section="lower")

visualize.norm(stat=c(73,78), mu=75, sd=1, section="bounded")#within the range of 73 and 78
visualize.norm(stat=c(73,78), mu=75, sd=1, section="tails")#tails gives outside of 73 and 78


#Binomial distribution
#continuous and discrete data
#continuous variable hold value between two specified values (height)
#discrete (counts)


#binomial probability distribution (discrete distribution)
#Experiments of n repeated trials (flip coin)
#One of the possible outcomes is success (p) and the other one failure
#probability of success does not change, trials are independent and fixed number of trials



#Using visualize to explore binomial distribution
#Example 5 heads in 10 flip coin
visualize.binom(5,10,0.5)

#More examples using visualize library
#probability of 5 or less heads in 10 flip coins

visualize.binom(5,10,0.5)
visualize.binom(5,10,0.5,section="upper") #5 or more
visualize.binom(c(4,5),10,0.5, section="bounded") #prob of getting 4 or 5
visualize.binom(c(1,9),10,0.5, section="tails")# prob of getting 6 or 9/ extreme values


#Visualize to plot pois distribution / Ex. get 7 or less with avg of 3.6
visualize.pois(7,3.6) 

#prob of 5  or more # upper lower mean onli 1 number
visualize.pois(5,3.6, section = "upper")

#prob of 0 or more than 7 #tails or bounded means2 numbers ("or")
visualize.pois(c(0,8),3.6, section = "tails") 

#prob of exactly 7
visualize.pois(c(7,7),3.6, section ="bounded")

