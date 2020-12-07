###Excerise 1

#1.a  Get the length of the "lynx" dataset
length(lynx)

#1b. Create a vector of ordered "lynx" index numbers (hint: order, increasing)
order(lynx)

#1c. Get 2 vectors (index positions and absolute values) with all "lynx" observations smaller than 500 (hint: which, subset)
which(lynx < 500)
subset(lynx, lynx < 500)

#2a. Get a Histogram of the "lynx" dataset
#2b. Adjust the bin size to 7 bins
#2c. Remove the labs and change the bins to 2 alternating colors
#2d. Add a subtitle and divide the main title in 2 lines

hist(lynx, col=c("salmon2", "darkblue"), breaks=7,
     sub="r-tutorials.com", xlab="", ylab="",
     main="Exercise Question\nHistogram" )

#3a. Extract Sepal.Length from the "iris" dataset and call the resulting vector mysepal

mysepal = iris$Sepal.Length

#3b. Get the summation, mean, median, max and min of mysepal

sum(mysepal);
mean(mysepal);
median(mysepal);
min(mysepal);
max(mysepal)

#3c. Get the summary of mysepal and compare the results with 3b

summary(mysepal)

#4a. Install and load library "dplyr"
#4b. Call help for function arrange of "dplyr"
#4c. Deinstall "dplyr"

install.packages("dplyr")
library(dplyr)
?arrange
#remove.packages("dplyr")

#5. Data for this exercise:  1
#x = c(3,6,9)
#5a. Repeat x 4 times, but there should be an extra 1 at the end and beginning
#5b. Call the vector of 5a myvec and extract the 5th value (hint: dplyr, nth)

x= c(3,6,9)
a5 =c(1,rep(x, times=4),1)
a5
nth(a5,5)

#6a. Get a subset of "mtcars" with transmission type: manual, and call it mysubset
mysubset= subset(mtcars, am==1)

#6b. Extract the first 2 variables of the first 2 observations of mysubset
mysubset[c(1,2), c(1,2)]

#7a. Get the first 9 observations of "mtcars"
head(mtcars,9)

#7b. Get the "mtcars" dataset ordered according to the increasing amount of "carb"
#hint for 7b: library dplyr, arrange
library(dplyr)
arrange(mtcars,carb)

#8a. Get the means of the first 2 columns in the "iris" dataset by Species
by(iris[,1:2], iris$Species, colMeans)

#8b. Create vector x which is the alternation of 1 and 2, 75 times, check the length
x = rep(1:2, times=75); length(x)

#8c. Attach x to iris as dataframe "irisx", check the head
irisx = data.frame(iris,x); head(irisx)

#8d. Get the colsums of columns 1,3,4 in the "irisx" dataset by the new x variable
by(irisx[,c(1,3,4)], irisx$x, colSums)

#9a. How many observations in "lynx" are smaller than 500?
sum(lynx < 500)

#9b. How many observations in "iris" have a Sepal.Length greater or equal 5?
sum(irisx$Sepal.Length >= 5)

#10a. Plot a simple xy plot with "iris" Sepal.Length vs. Sepal.Width
#10b. Enlarge the scale limits: y from 0 - 5, x from 3 - 9
#10c. Add a text of your choosing, in red, at the lower part of the plot
attach(iris)
plot(Sepal.Length, Sepal.Width)
plot(Sepal.Length, Sepal.Width, ylim=c(0,5), xlim=c(3,9))
text(6,1, "Sample Text from Tanviii", col="red", cex=2, lwd=2)
