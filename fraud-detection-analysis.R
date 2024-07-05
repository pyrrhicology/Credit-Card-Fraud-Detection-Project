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

# DATA MODELLING:
library(caTools)
install.packages("caTools")
library(caTools)
set.seed(123)

# Splitting the data into training (80%) and testing (20%) sets
data_sample = sample.split(NewData$Class, SplitRatio = 0.80)
train_data = subset(NewData, data_sample == TRUE)
test_data = subset(NewData, data_sample == FALSE)
dim(train_data)
dim(test_data)


# Fitting Logistic Regression Model
Logistic_Model = glm(Class ~ ., train_data, family = binomial())
summary(Logistic_Model)

plot(Logistic_Model) # Visualizes the model

# Calculating AUC for Logistic Regression
install.packages("pROC")
library(pROC)
lr.predict <- predict(Logistic_Model, newdata = test_data, type = "response")
auc.gbm = roc(test_data$Class, lr.predict, plot = TRUE, col = "blue") # The ROC curve helps us assess how well a binary classifier can distinguish between two classes (in this case, fraudulent and non-fraudulent transactions) across various threshold settings.


# Decision Tree Model
install.packages("rpart")
library(rpart)
install.packages("rpart.plot")
library(rpart.plot)

decisionTree_model <- rpart(Class ~ ., creditcard_data, method = 'class')
predicted_val <- predict(decisionTree_model, creditcard_data, type = 'class')
probability <- predict(decisionTree_model, creditcard_data, type = 'prob')
rpart.plot(decisionTree_model)
