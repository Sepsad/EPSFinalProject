par(mfrow = c(2,2))
for (i in c(1,5,10,15)){
  
  plot(dpois( x=0:200, lambda=i ), xlim=c(-2,20),freq = FALSE , type = "l" , col = "red")
}
  
lambda <- 4
num_of_samples <- c(5,10,500,5000)
x <- c(1:500)
par(mfrow=c(2,2))

for(j in num_of_samples)
{
  for (i in 1:500){
    x[i] <- mean(rpois(j,lambda))
    
  }
  hist (x,freq=FALSE , 50)
  xfit <- seq(min(x),max(x),length = 40)
  yfit <- dnorm(xfit,mean(x),sd(x))
  lines(xfit,yfit,col="blue")
  print(j)
}



