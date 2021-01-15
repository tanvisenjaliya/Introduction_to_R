#histograms
?hist
?cars
ourdata= cars$speed

hist(ourdata)
hist(ourdata, labels= T, breaks = c(0,5,10,20,30))
hist(ourdata, labels= T, breaks = c(10))
hist(ourdata, labels = T,ylim = c(0,10), breaks = 10)

hey= hist(ourdata,breaks = 10)
xaxis = seq(min(ourdata), max(ourdata), length= 10)
yaxis = dnorm(xaxis,mean = mean(ourdata),sd=sd(ourdata))
yaxis = yaxis*diff(hey$mids)= length(ourdata)

lines(xaxis,yaxis,col="red")
lines(density(ourdata),col="blue",lwd=2)



hist(lynx,breaks = 9,ylim = c(0,70),las=1,
     labels = T,col = c("white","green"),
     main="Annual lynx Trappings",
     xlab = "number of lynx trappings\n per year")
mtext("1821-1934")
