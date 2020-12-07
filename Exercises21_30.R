#1. Function 'apply' on a simple matrix:
#a. Get the following matrix of 5 rows and call it 'mymatrix'
#b. Get the mean of each row
#expected result
#[1] 167.00 175.50 404.50 186.00 166.75
#c. Get the mean of each column
#expected result
#[1] 193.6 114.0 25.2 547.0
#d. Sort the columns in ascending order

mymatrix = matrix(data = c(6,34,923,5,0, 112:116, 5,9,34,76,2, 545:549), nrow = 5)

apply(mymatrix, MARGIN = 1, FUN = mean)

apply(mymatrix, MARGIN = 2, FUN = mean)

apply(mymatrix, MARGIN = 2, FUN = sort)


#2. Using 'lapply' on a data.frame 'mtcars'

#a. Use three 'apply' family functions to get the minimum values of each column of the 'mtcars' dataset (hint: 'lapply', 'sapply', 'mapply').

#Store each output in a separate object ('l', 's', 'm') and get the outputs.

lapply(mtcars, FUN = min) -> l
sapply(mtcars, FUN = min) -> s
mapply(mtcars, FUN = min) -> m
l; s; m

#b. Put the three outputs 'l', 's', 'm' in the list 'listobjects'
listobjects = list(l, s, m)
#c. Use a suitable 'apply' function to get the class of each of the three list elements in 'listobjects'
sapply(FUN = class, X = listobjects)
#d. Name the output classes for each of the three functions used in the exercise
#'lapply' gives a list,
#'sapply' and 'mapply' give vectors per default'

#3. 'mapply'

#a. Use 'mapply' to get a list of 10 elements. The list is an alteration of 'A' and 'F'. The lengths of those 10 alternating elements decreases step by step from 10 to 1.
#b. Tweak the function that you get proper element numbers (1 : 10) for the 10 list elements.
#Hint: argument USE.NAMES

mapply(rep, c("A", "F"), 10:1)

mapply(rep, c("A", "F"), 10:1, USE.NAMES = F)
#proper element numbers


#4. Titanic Casualties - Use the standard 'Titanic' dataset which is part of R Base

#a. Use an appropriate apply function to get the sum of males vs females aboard.
#b. Get a table with the sum of survivors vs sex.
#c. Get a table with the sum of passengers by sex vs age.
apply(Titanic, 2, sum)

apply(Titanic, c(2,4), sum)

apply(Titanic, c(3,2), sum)

#5. Extracting elements from a list of matrices with 'lapply'

#a. Create 'listobj' which is a list of four matrices - see data:
first = matrix(38:66, 3)
second = matrix(56:91, 3)
third = matrix(82:145, 3)
fourth = matrix(46:93, 5)
listobj = list(first, second, third, fourth)
#b. Extract the second column from the list of matrices (from each single matrix).
lapply(listobj,"[", , 2)
#c. Extract the third row from the list of matrices.
lapply(listobj,"[", 3 , )




#6. Plotting with the 'apply' family. Use the dataset 'iris' from R Base.

#a. Get a boxplot for each numerical column of the 'iris' dataset (four boxplots).
apply(iris[,1:4], 2, boxplot)


#b. The package 'vioplot' has a useful function 'vioplot' for violin plots 
#(hint: install and activate package). Get one violin plot for each numeric column, 
#remove any numbers from the x axis, color = salmon
library(vioplot)
apply(iris[,1:4], 2, vioplot, col = "salmon", names = "Temp")

#7. Using the 'apply' family to work with classes of data.frames

#a. Find out which column of iris is not numeric.
which(sapply(iris, class) != "numeric")

#b. Identify the levels of the non-numeric column (hint: 'levels' function).
levels(iris$Species)

#c. Try the function "unique" instead, compare the output.
unique(iris$Species)

#8. Use library 'ggplot2', dataset = 'diamonds' (hint: install and activate package)

#a. Load the library 'ggplot2', and dataset 'diamonds'.
library(ggplot2)

#b. Which columns are not numeric in class?.
which(sapply(diamonds, class) != "numeric")
#c. For observations 10000 to 11000, get the mean of columns 8, 9, 10.
apply(diamonds[10000:11000, 8:10], 1, mean)
#d. Same as 'c' but round the results to one digit.
round(apply(diamonds[10000:11000, 8:10], 1, mean),1)
#e. Sort the rounded results in ascending order.
sort(round(apply(diamonds[10000:11000, 8:10], 1, mean),1))


#9. Function 'aggregate'

#a. Use 'aggregate' on 'mtcars'. Calculate the median for each column sorted by the number of carburetors. Use the standard 'x', 'by' and 'FUN' arguments.
aggregate(x = mtcars, by = list(mtcars$carb), FUN = median)

#b. Calculate again the median based on 'carb', but this time use the 'formula-dot' notation.
aggregate(. ~ carb, data = mtcars, median)


#10. Modulo division in a matrix

#a. Get the object 'mymatrix' as below
mymatrix = matrix(data = c(6,34,923,5,0, 112:116, 5,9,34,76,2, 545:549), nrow = 5)
mymatrix

#b. Use 'apply' to perform a modulo division by 10 on each value of the matrix. The new matrix contains the rest of the modulo division.
apply(mymatrix, c(1,2), function(x) x%%10)

