###Exercise to random number generation

#1. Get 100 random numbers which are uniformly distributed.
x <- runif(100,1,100)

#2, Get a vector from this random nums consisting of every tenth value
x[seq(from = 10, by = 10, length = 10)]
x

#3. find out what argument lambda does in rpois by manipulating it

y <- rpois(1000, lambda =1)
hist(y)
