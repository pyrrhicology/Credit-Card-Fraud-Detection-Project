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

summary(creditcard_data$Amount) # Gets summary statistics of the transaction amount
names(creditcard_data) # Displays the column names
var(creditcard_data$Amount) # Calculates the variance of the transaction amount

# DATA MANIPULATION
creditcard_data$Amount = scale(creditcard_data$Amount) # Scaling the 'amount' column to normalize the values
NewData = creditcard_data[, -c(1)] # Removes the 'Time' column as it might not be relevant for prediction
head(NewData)

# DATA MODELLING
library(caTools)
install.packages("caTools")
library(caTools)
