
### Exercise

# 1 . Create the object "myobject" and assign the values 1:10 # in at least 3 different ways

# 2. Get the sum of your object

# 3. Create the following vector by using the paste function "R is great 4 and I will love it" "R is great 7 and I will love it" "R is great 45 and I will love it"

# 4. vector of 1,2,3 : repeat the vector to get 11 x 1, 10 x 2, and 10 x 3

# 5. What is the value of this vector on position 7

## Solutions

# 1 . Create the object "myobject" and assign the values 1:10 # in at least 3 different ways

myobject <- (1:10)

myobject = (1:10)

(1:10) -> myobject

assign("myobject", 1:10)

# 2. Get the sum of your object

sum (myobject)

# 3. Create the following vector by using the paste function "R is great 4 and I will love it" "R is great 7 and I will love it" "R is great 45 and I will love it"

paste ("R is great", c(4,7,45), "and I will love it")

# 4. vector of 1,2,3 : repeat the vector to get 11 x 1, 10 x 2, and 10 x 3

x = rep(1:3, length = 31); x

# 5. What is the value of this vector on position 7

x[7]



### Working with data.frames

?airmiles

head(airmiles) # first 6 rows

tail(airmiles) # last 6 rows

summary(mtcars)

plot(mtcars) # simple xy plot function of R Base

hist(airmiles) # histogram

head(mtcars)

sum(mtcars$wt)

attach(mtcars) # attach to R session environment

sum(wt) # now R knows which data.frame to use since it is attached

detach(mtcars) # remove it from environment

sum(wt) # error message since mtcars it not attached any more

mtcars[2,6]

mtcars[c(2,5,8),6]

### Graphs in R Base

# 3 main data viz systems: # ggplot2, lattice and R Base

# simple scatterplot

x=5:7 # 3 data points, integers

y=8:10

# default plot output here is a scatterplot

plot(x,y)

# data is a time series, default here is a line plot

plot(lynx)

# title, color, title color, title magnification

plot(lynx, main="Lynx Trappings", col="red",      col.main=52, cex.main=1.5)

# label names

plot(lynx, ylab="Lynx Trappings", xlab="")

# label orientation

plot(lynx, ylab="Lynx Trappings", xlab="", las=2)

# las - 0:3, scale orientation

# changing the session paramter, 2*2 plot matrix

par(mfrow=c(2,2), col.axis="red")



plot(1:8, las=0, xlab="xlab", ylab="ylab", main="LAS = 0")

plot(1:8, las=1, xlab="xlab", ylab="ylab", main="LAS = 1")

plot(1:8, las=2, xlab="xlab", ylab="ylab", main="LAS = 2")

plot(1:8, las=3, xlab="xlab", ylab="ylab", main="LAS = 3")

# color manipulation

colors()

# point symbol types

?pch

x=2:4

plot(x, pch="c") # using letters as point symbols

plot(x, pch=13) # symbol nr 13

# Line Types

par(mfrow=c(1,1), col.axis="black") # setting parameters back to default

library(plotrix) # add on package for "ablineclip", install if not yet available

plot(1:7, ylab="", main="Line Types lty 0:6", xlab="lty 0:6") # test plot

ablineclip(v=1, lty=1, col="sienna2", lwd=2) # solid (default)

ablineclip(v=2, lty=2, col="sienna2", lwd=2) # dashed

ablineclip(v=3, lty=3, col="sienna2", lwd=2) # dotted

ablineclip(v=4, lty=4, col="sienna2", lwd=2) # dotdash

ablineclip(v=5, lty=5, col="sienna2", lwd=2) # longdash

ablineclip(v=6, lty=6, col="sienna2", lwd=5) # twodash, thicker for comparison

ablineclip(v=7, lty=0, col="sienna2", lwd=2) # blank

# plot types of R Base plot

? plot

# by using "type" we can specify which kind of plot we want

plot(lynx) # plot for time series data

plot(lynx, type="p", main="Type p") # points (default)

plot(lynx, type="l", main="Type l") # lines (default for time series)

plot(lynx, type="b", main="Type b") # points connected by lines

plot(lynx, type="b", main="Type c") # lines only of b

plot(lynx, type="o", main="Type o") # points overlaid by lines

plot(lynx, type="h", main="Type h") # high density

plot(lynx, type="s", main="Type s") # steps

plot(lynx, type="n", main="Type n") # no plot

# Example: advanced line plot with R Base

par(mar=c(4,3,3,3), col.axis="darkgreen") # change of plot margins

plot(cars$speed, type="s", col="red", bty="n", xlab="Cars ID", ylab="")

text(8, 14, "Speed in mph", cex=0.85, col="red") # adding the explanatory text to plot 1

par(new=T) # allows 2 in 1 plot

plot(cars$dist, type="s", bty="n", ann=F, axes=F, col="darkblue")

axis(side=4, col = "darkblue") # y axis for plot 2

text(37, 18, "Stopping distance in ft", cex=0.85, col="darkblue") # explanations to plot 2

title(main="Speed and Stopping\n Distances of Cars") # main title

#??? graphical parameters

?par

par()

### Graphs Exercise

# 1. get familiar with "rivers" - how many observations? # 2. plot rivers against its index (hint: number of observation on x) # 3. add: header (red), label names # 4. change the point symbol and point color

## Solution

?rivers # 141 observations

x = 1:141

y = rivers

plot(x,y, col = "green", pch = 20,      main = "Lengths of\nMajor N. American Rivers",      col.main ="red", xlab = "",      ylab = "length in miles")