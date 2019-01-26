library(dplyr)

MyData <- read.csv(file="C:/private shakhsi/Education/Coding/R/eps_proj/FIFA18 - Ultimate Team players.csv",header = TRUE , sep = ',' , stringsAsFactors = TRUE)

height <- MyData$height

Quartet <- boxplot(height)

hist(height,30)

plot(ecdf(height))



