library(dplyr)

MyData <- read.csv(file="C:/private shakhsi/Education/Coding/R/eps_proj/FIFA18 - Ultimate Team players.csv",header = TRUE , sep = ',' , stringsAsFactors = FALSE)

NA_fraction <- function(List0){
  NAs_index = which(List0 == "N/A")
  fraction_of_NA = length(NAs_index)/length(List0) 
  return(fraction_of_NA)
}

  number_of_feature = length(MyData[1,])
  feature_names = names(MyData)

for (i in c(1:number_of_feature))
{
  print("fraction on NAs")
  print(feature_names[i])
  print(NA_fraction(MyData[,i]))
  
}