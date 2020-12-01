### Understanding Functions in R

# setting a seed to make a random sample reproducible, choose any number you want

set.seed(65)

# with argument name, exact argument order

runif(n = 9, min = 3, max = 6)

set.seed(65)

# without argument name, exact argument order

runif(9, 3, 6)

set.seed(65)

# with argument name, mixed argument order

runif(min = 3, max = 6, n = 9)



set.seed(65)

# without argument name, mixed argument order

runif(3, 6, 9) # this means n=3, max=9

set.seed(65)

# using only the first argument

runif(3)

set.seed(65)

# using arguments 1 and 3

runif(3,,4)

### First Coding Steps

# R as a calculator 4 + 4                        + 5

# Space does not matter

# Operators: + - / * ^

# Using several operators and round brackets (5-3)^3

# Creating objects

x <- c(4,5,6)

c(4, 5.2, 76) -> y # arrows work both directions y

x = c(4, 5, 6)

assign("x", c(4.2, 1, 5)) # function assign

# c for concatenate

x = c(4,5,6)

x # display in console

x = c(4,5,6); x # semicolon indicates a new row of code

# See which objects are already created ls()

objects()

# Removing an object

rm("x")

# Working with vectors

x = c(y, 5, y) 

# Sum and roots

sum(x)

sqrt(x)

# Values at a given position within the vector

x[1]

newobject <- x < 5; newobject

x # Comparison against original values

## Types of brackets

# () round brackets as the standard

# [] box brackets for index positions

# {} curled brackets for functions and loops

### Functions: seq, paste, rep

?seq # starting with the seq function

seq() # just using the default settings

# simple sequence from 3 to 5

seq(3, 5)

seq(from = 3, to = 5)

# using length

seq(from = 3, length = 3)

# step manipulations

seq(from = 3, length = 3, by = 0.5)

seq(from = 3, by = 0.5, length = 3) # changed order

?paste # next function

paste(1:4)

class(paste(1:4)) # checking the class

paste("xyz", 1:10)

paste("xyz", c(2,5,7,"test", 4.5)) # random vector with numbers and characters

paste("xyz", 1:10, sep = "") # modifying the seperator

?rep # next function

rep(c(3,4,5), 3)

rep(1:10, times = 3)

x = c(1,2,3) # creating x

rep(x, each = 3) # using each

rep(x, each = 3, times = 3) # combining arguments

## Working with index positions

x = 4:20 # our data

which(x == 10) # double equal sign, logical operation

x[3]
