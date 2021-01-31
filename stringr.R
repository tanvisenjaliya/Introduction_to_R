library(stringr)


teststring <- c("my teststring to explain how substitution with my R Base works",
                "another teststring for My example of gsub and sub")


numberstring <- c("3445 is GReater than 23 - @???!§$",
                  "Tom coded 11 Java scrips and 23 Python scripts")


# adding strings together
str_c(c(numberstring, teststring), sep="")


# we can count the occurences of a specific symbol in an element
str_count(numberstring, "3")


# we can locate the first and last position of a symbol in a given string
str_locate_all(numberstring, "3")


# replacement similar to sub - first occurence
str_replace(numberstring, "\\d", "")


# and gsub - all occurences
str_replace_all(numberstring, "\\d", "")


# library(gsubfn) - can be used to incorporate functions to gsub
library(gsubfn)



### Exercise

ourstring <- c("Tom found 74 apples", "Is this a question?",
               "How many $ and ??? doEs it cost?")

ourstring


# 1. put the string to complete lowercase
# 2. remove the punctuation
# 3. remove the spaces
# 4. remove the ??? sign (if you have it on your keyboard)
# 5. use str_extract_all from stringer to see which element contains "is"

ourstring = tolower(ourstring); ourstring # 1



ourstring = gsub("[[:punct:]]", "", ourstring); ourstring # 2



ourstring = gsub("\\s", "", ourstring); ourstring # 3



ourstring = gsub("[???]", "", ourstring); ourstring # 4

str_extract_all(ourstring, "is") # 5

