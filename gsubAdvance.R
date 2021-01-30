#Advance methods
numberstring<- c("3445 is greater than 23 - @!$&",
                "Tom coded 11 java scripts and 23 Python Scripts")
#lets exhange specific letters with "Q"
gsub("[iot]","Q",numberstring)

#removing punctuation
gsub("[[:punct:]]","",numberstring)

#removing anything but graphical characters
gsub("[^[:graph:]]","",numberstring)
