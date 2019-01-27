

MyData <- read.csv(file="C:/private shakhsi/Education/Coding/R/eps_proj/FIFA18 - Ultimate Team players.csv",header = TRUE , sep = ',' , stringsAsFactors = FALSE)
source("C:/private shakhsi/Education/Coding/R/eps_proj/Q7.R")

X=NA_corect(MyData$drib_agility)
Y=NA_corect(MyData$drib_balance)

index = sample(1:length(X) , 200)

X_sample = X[index]
Y_sample = Y[index]

q = lm(Y_sample ~ X_sample)


par( mfrow = c(1,1) )
plot(x= X_sample ,y= Y_sample )

abline(q, col = "red")