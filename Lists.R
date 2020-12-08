##how to create lists in R

# use "list" to create
mylist <- list(1:10,c("Pam","Jim","Karen"),rnorm(10))
mylist

#to name the elements
names(mylist)<- c("integer","characters","num")
mylist

#cal the length
length(mylist)

#cal len of a single element

length(mylist$integer)

#to directly name the elements
mylist2 <- list(a=3:5,b=c(4.6,4.9))
mylist2               

#work with specific elements
mylist$characters[2]

#get mode of ele
mode(mylist$num)
mode(mylist$characters)

#combined list
combinedlist <- c(mylist2,mylist)
combinedlist
