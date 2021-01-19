?pie
# to create the slices and define the size
slices = c(40, 20, 40)
# name (labels) of the slices - WATCH the length
countries = c("US", "UK", "Other")
# to add the slice size to the labels
countries = paste(countries, slices)
# to further specify the labels
countries = paste(countries, "%", sep = "")

# the actual pie chart
pie(slices, labels=countries,
    col=c("red", "blue", "white"), main ="Sales Distribution")

#a. to work with data frames
?iris
attach(iris)
Values = table(Species) # table for counts
labels = paste(names(Values))
pie(Values, labels =labels, main ="Species Distribution")

#b. to add a 3D effect
# we need the library "plotrix"
library(plotrix)
# then we can use "pie3D"
# and we can add "explode" - distance should be around 0.1 - 0.05
pie3D(slices, labels=countries, explode = 0.05,
      col=c("red", "blue", "white"), main ="Sales Distribution")
