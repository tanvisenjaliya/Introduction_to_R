#advanve scatterplots
set.seed(67)
x= rnorm(10,5,7)
y= rpois(10,7)
z=rnorm(10,6,7)
t= rpois(10,9)
#at first we create a simple scatterplot

plot(x,y,col=123, pch=10, main="Multi scatterplot",
     col.main="red",cex.main=1.5, xlab = "indep",ylab = "depend")

#now add another layer of our scatterplot
points(z,t,col= "blue",pch=4)

#and the last one
points(y,t,col=777,pch=9)

#this gives us three layers of scatterplot
#################

#Legends
#we can add a legend to be able to understand out layered sactterplot
#the first two numbers specify the position on the x y scale,
#than we have legends names, colours(col) and symbols(pch) to be used in the scale
#with cex you can sdjust the size and bty removes the surrounding box.
?legends

legends(-6,5.9, legend("Level 1","leven 2","level 3"),
        col = c(123,"blue",777),pch=c(10,4,9),cex=0.65,bty="n")

#Exercise
#create the following vectors
x=1:5
y=rep(4,5)
x1= 1.1:5.1
y1=5;1
#now plot those 3 levels in your scatterplot (x-y,x1-y1, x1-x)
#pick a suitable format for your plot
#add a legend without box to your plot

#solution
plot(x,y,main="Exercise Solution", xlab = "",ylab = "",
     cex.main=1.3,col.main=777,pch=3,col="red",bty="n")
points(x1,y1, col="green", pch=8)
points(x1,x,col="blue",pch=9)
legends(1,3.5, legends=c("level 1","level 2","level 3"),
        col=c("red","green","blue"),pch=c(3,8,9),cex=0.75,bty="n")
