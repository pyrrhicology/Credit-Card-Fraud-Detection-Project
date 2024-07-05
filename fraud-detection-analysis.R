install.packages("httpgd")
install.packages("ranger")
install.packages("caret")
install.packages("data.table")


#Loading required Libraries
library(ranger)
library(caret)
library(data.table)

#Reading the dataset
creditcard_data <- read.csv("D:\\Credit Card Fraud Detection Project\\creditcard.csv")

#DATA EXPLORATION SECTION
dim(creditcard_data)
