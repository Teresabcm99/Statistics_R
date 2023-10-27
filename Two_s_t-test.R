#Two sample t-Test
#independent data BP in male and female (two sample t-test)
#dependent data BP before and after receiving meds (paired t-test)

#two sample t-test searching for equal variance
cm1<-c(149,154,150,151,152)
cm2<-c(157,155,158,156,154)



#paired t-test bp before and after medicine. Dependency between variables
bp.before<-c(120,126,140,125,109)
bp.after<-c(126,140,126,104,108)

t.test(x=bp.before, y=bp.after, paired=T)
#check p value >0.05 

#visualize (Plot the difference between before & after)
bp.diff<-bp.after-bp.before
bp.diff
boxplot(bp.diff, main="Effect of Meds on Bp", ylab="Post Meds -BP diff")


#testing for variance
var.test(x=cm1,y=cm2)
# look at p value >0.05 null is true
#T-test
t.test(x=cm1, y=cm2, var.equal = T)
# low p values reject null hypothesis

# visual representation of data
boxplot(cm1,cm2)

#Testing whn un-equal variance

cm3<-c(153,152,154,151,150)
cm4<-c(144,162,157,159,147)

#checking equality of variance
var.test(x=cm3, y=cm4)
#check p values
#t.test
t.test(x=cm3,y=cm4, var.equal=F)
#if high p value null is true

#data visualization
boxplot(cm3,cm4)
