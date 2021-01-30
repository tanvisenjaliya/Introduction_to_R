#Strings

#Strings are mainly used as scraped data: Twitter, Google,etc
#text bases data e.g. Sentiment Analysis
#text mining

#R Base offers useful featurea to handle strings e.g. gsun
#in order to be able to handle Strings a sublanguage( regular expressions) is used
# add ons are avaliable like "stringr" and "gsubfun"
mystring<-" This is a string!"
mystring

#character manipulations

tolower("This is a String!")
toupper("This is a String!")
strsplit("This is a String!",NULL)
strsplit("This is a String!"," ")


#gsub family
#a character vector with 2 strings

teststring<- c("my teststring to explain how substitution with my R Base works",
               "another teststring fot My example of gsub and sub")
#output
teststring

#1. structure of the sub/gsub family
gsub("my", "OUR",teststring)

#2. difference sub vs gsub - sub exchanges only the first occurance per string
sub("my","OUR",teststring)

#3. working with cases -see the last string My
gsub("my","OUR",teststring,ignore.case = T)

#4. working with numbers- deleting numbers
numberstring<- c("3445 is greater than 23 - @!$&",
                 "Tom coded 11 java scripts and 23 Python Scripts")
numberstring

#we need to check the regular expression syntax to see how digits are encoded
gsub("\\d","",numberstring)


#now we go other way around and replace anything not beeing a digits
gsub("\\D","",numberstring)

#5. avoid the spaces
gsub("\\s","",numberstring)
