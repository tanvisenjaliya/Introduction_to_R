#1.
#a. Write a function "myfun" of x to the power of its index position (x, x^2, x^3, .)
myfun = function(x){
  x ^ (1 : length(x))
}
#b. Test the function with an x of 1:10
myfun(1:10)
#c. Enlarge the function "myfun" with a division through the index position (x, x^2 / 2, x^3 /3, .)
myfun = function(x){
  (x ^ (1 : length(x))/(1 : length(x)))
}

myfun(1:10)

#2.

#a. Write a simple moving average function (length = 3)
mySMA = function(x){
  n = length(x)
  (x[1:(n-2)] + x[2:(n-1)] + x[3:n] )/3
}


#b. Use it on the lynx dataset
mySMA(lynx) 

#c. Plot the SMA line against the original datset in a base plot
#Hint: get the SMA object in a time series class and start at the beginning of lynx+2
SMAline = ts(mySMA(lynx), start = 1823)
plot(lynx)
lines(SMAline, col ="red")

#3.

#a. Write the function "myquarter" which allocates quadrants 1:4 to the angle degrees of the vector angle. That means a value of 80° is in quadrant 1, 310 ° in quadrant 4, 400° in quadrant 1 again, and so on

#b. Test the function with the values: (910, 492, 1900)
myquarter <- function(angle){
  1 + (angle%%360)%/%90
}

myquarter(c(910, 492, 1900))

#4.
#a. Get the matrix "mym" which consists of the 4 values 1:4
#b. Double all the odd numbers in mym with a function "matrixfun"
mym = matrix(1:4, nrow = 2)

matrixfun <- function(mym){
  mym[mym%%2 == 1] <- 2 * mym[mym%%2 == 1]
}

matrixfun(mym)
mym

#5.Take matrix "mym" and write a function which should return a new matrix which contains all the columns without an NA in it.
mym = matrix(c(3, NA, NA, 4, 5, 6, 7, 9), nrow = 2); mym

myfun <- function(mym){
  mym[, !apply(is.na(mym), 2, any), drop = F]
}

myfun(mym)

#6.

#a. Write a function "myfun" of 2 variables, a and b, where myfun = a^b
myfun <- function(a,b){
  a^b
}

#b. Get "myfun2" which is the same as "myfun" but divided by the index position of a+1 (e.g. the first position is divided by 2, the second by 3, .)
myfun2 <- function(a,b){
  (a^b)/(2:(length(a)+1))
}
#c. Test both functions with a = 1:10 and b = 5
myfun(1:10,5)
myfun2(1:10,5)

#7.

#a. Write a function that generates a data.frame. Set up the function in a way so that it accepts any number of variables (hint: . as placeholder) and automatically returns the data.frame

mydframe = function(...){
  data = data.frame(cbind(...))
  return(data)
}
#b. Test it with those 3 vectors

a = c(3,5,6)
b = c(T,T,F)
c = c("Tom", "Ted", "Hank")
mydframe(a,b,c)

#8.

#a. Write a function "invoice" with variables pcs (nr of pieces) and unitprice the function
#calculates the net price (pcs * unitprice) and gives a deduction of 10% for >25 pieces sold
#b. Test with 56 pieces of 89$/unit
invoice <- function(pcs,unitprice){
  net.price <- pcs * unitprice
  if(pcs>25){
    net.price <- net.price*0.9
  }
  return(net.price)
}
invoice(pcs = 56, unitprice = 89)
invoice(pcs = 16, unitprice = 63)
invoice(pcs = 16, unitprice = 89)

#9.

#a. Write the function "doreturn" with variables x and y. The functions contains four steps:

#a = 5*x + y
#b = x + 7*y
#r = 3*x + 9*y
#t = x/y - 115
#Write the function in a way so that you get all four variables (a, b, r, t) returned

doreturn <- function(x,y){
  a<- 5*x+y
  b<-x+7*y
  r<-3*x + 9*y
  t <- x/y - 115
  return(c(a,b,r,t))
}

#b. Test with 10 for x and 15 for y

#expected result

#[1]   65.0000  115.0000  165.0000 -114.3333

doreturn(10,15)

#10.
#a. Write a function "myplot" which plots any data you feed into it (hint: placeholder). 
#Preset arguments for magnification, line width, point type, color, delete lab naming
#b. Test the plot function with lynx and rivers datasets
myplot <- function(...){
  plot(... , pch = 12, lwd = 4,
       col = "salmon",
       cex = 0.9, xlab = "", ylab = "")
}

myplot(lynx)
myplot(rivers)
