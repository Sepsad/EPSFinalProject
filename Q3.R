
MyData <- read.csv(file="C:/private shakhsi/Education/Coding/R/eps_proj/FIFA18 - Ultimate Team players.csv",header = TRUE , sep = ',' , stringsAsFactors = TRUE)

weight_fifa <- MyData$weight

numb_of_samples = 100
sample_weight <- sample(weight_fifa,numb_of_samples)

scale_sample_weight <-scale(sample_weight) #for qqnorm

mean_weight <- mean(sample_weight)
var_weight <- var(sample_weight)
sd_weight <- sd(sample_weight)

mean_weight 
var_weight 
sd_weight


qqnorm(scale_sample_weight)
abline(0,1)

confidence_interval <- function(Level , s , mu , n){
error = (qnorm(1-((1-Level)/2))*s)/sqrt(as.numeric(n))
conf_int = c(mu-error,mu+error)
return(conf_int)
}
confidence_interval(0.95,sd_weight,mean(weight_fifa),numb_of_samples)


p_value_1 <- function(mu0 , mu1 , s , n )
{
  z = (abs(mu1 - mu0))/(s/sqrt(n))
  return((1-pnorm(z)))
}
mean_weight

mu_for_test <- mean_weight

p_value_1(mean(weight_fifa) , mu_for_test , sd_weight , numb_of_samples) # yek tarafe

2*p_value_1(mean(weight_fifa) , mu_for_test , sd_weight , numb_of_samples) # do tarafe







