#Anova (analysis of the variance) from scratch
#example volume of three diff. grape juice machines
g1<-c(150,149,152,151,150,151)
g2<-c(153,151,152,149,150,152)
g3<-c(149,148,150,151,149,150)

#create dataframe, usually you load data set using .csv function
volume<-c(g1,g2,g3)

groups<-rep("group1", times=6)
#alterantive
#groups<-rep("group 1", times=len(g1))

groups<-rep(c("g1","g2","g3"), times=c(length(g1),length(g2),length(g3))) #repeat throughout length of column


vol.gr<-data.frame(volume,groups)

#Carry out Anova
aov(vol.gr, formula = volume~groups)
groups.aov<-aov(vol.gr, formula = volume~groups)
summary(groups.aov)


#visualiztion
boxplot(g1,g2,g3)


#post-hoc test to explore statistical differences between groups (#check p value)
TukeyHSD(x=groups.aov)
