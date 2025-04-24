mu = 5 # expected value
sigma = 1 # standard deviation

n = 10 # sample size

iter = 1000 # number of iterations we draw a new random sample and calculate the sample mean

sample_mean <- replicate(iter,mean(rnorm(n,mu,sigma))) 

hist(sample_mean,prob = TRUE)
xx = seq(4,6,by=0.01)
yy = dnorm(xx,mu,sigma/sqrt(n))
lines(xx,yy,col='blue') #the density distribution for N(mu,sigma/sqrt(n))


n = 10
hist(replicate(iter,mean(runif(n)))) 

n = 60
hist(replicate(iter,mean(rexp(n)))) 

n = 80
hist(replicate(iter,mean(rlnorm(n)))) 
