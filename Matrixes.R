#matrices

#1. create a matrix below
#2. name columns and rows
#3. calculate the following matrix by using the first matrix in atleast 2 ways
#hint: t and crossprod may help

#Z = matrix(data = c(6,34,92
Z = matrix(data= c(7,-7,7), nr=3,nc=3,byrow = T,
           dimnames=list(c("row1","row2","row3"),
                          c("col1","col2","col3")))
Z

#using t
t(Z)*Z

#using crossprod
 crossprod(Z)/3
 