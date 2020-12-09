##iris dataset

summary(iris)
head(iris)
names(iris)
attach(iris)
summary(Species)
myFilter = (Species=='virginica')#match the quotations at characters
myFilter

newiris = cbind(iris, myFilter)
names(newiris)

virginica.s = newiris[myFilter== T,c("Sepal.Length","Sepal.Width")]
virginica.s

class(virginica.s)
