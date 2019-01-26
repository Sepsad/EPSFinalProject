
MyData <- read.csv(file="C:/private shakhsi/Education/Coding/R/eps_proj/FIFA18 - Ultimate Team players.csv",header = TRUE , sep = ',' , stringsAsFactors = FALSE)
source("C:/private shakhsi/Education/Coding/R/eps_proj/Q1.R")

X=NA_corect(MyData$drib_dribbling)
Y=NA_corect(MyData$pass_curve)

plot(x= scale(X) ,y= scale(Y) )

linear_model <- lm(Y~X)
abline(linear_model, col = "red")

corel_pearson <- cor(X,Y , method = "pearson")
 
corel_spearman <- cor(X, Y , method = "spearman")

qqplot(X,Y)

