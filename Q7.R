library(dplyr)

MyData <- read.csv(file="C:/private shakhsi/Education/Coding/R/eps_proj/FIFA18 - Ultimate Team players.csv",header = TRUE , sep = ',' , stringsAsFactors = FALSE)

NA_corect <- function(List ){
  List_without_NAs = List
  NAs_index = (List == "N/A")
  n=which(NAs_index==TRUE)
  List_without_NAs = as.numeric(List_without_NAs)
  List_without_NAs[NAs_index] = 0
  mean_List = (sum(List_without_NAs))/(length(List)-n)
  List_without_NAs[NAs_index]=mean_List
  return(List_without_NAs)
}

NA_corect(MyData$pace)