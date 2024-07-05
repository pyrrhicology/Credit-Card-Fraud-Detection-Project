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
dim(creditcard_data) #checks the dimensions of the dataset
head(creditcard_data, 6) #views the first 6 rows of dataset
tail(creditcard_data, 6) #views the last 6 rows of dataset

# Counts the number of fraudulent and non-fraudulent transactions
table(creditcard_data$Class) 
