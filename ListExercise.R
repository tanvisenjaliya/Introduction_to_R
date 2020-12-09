##Exercise
#1. create a list of three elements
# with three different classess( character, numeric, integer)
# name the elements a:c
# you choose length and values.

#1b. extract the value on position 2 of your 2 element in the list

a = c("Pune","Surat","Banglore")
b = (rnorm(10))
c = 30:45
myexlist = list(a=a,b=b,c=c)
myexlist
myexlist$b[2]
