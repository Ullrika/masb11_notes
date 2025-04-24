load("data/lab1_filer/jordprov.Rdata")
x <- sort(jordprov$al) # sortera
n <- length(x) # antal värden i stickprovet
eFx <- (1:n)/n # steg
plot(x,eFx,main="Empirisk fördelningsfunktion") #

m = mean(jordprov$al)
s = sd(jordprov$al)

tFx <- qnorm(eFx,m,s)

plot(tFx,x)
abline(0,1,col="blue") # lägg till en 1:1-linje

xx <- seq(50,110,by=0.1)
pdf <- dnorm(xx,m,s)

hist(x,prob=TRUE)
lines(xx,pdf,col='blue')
