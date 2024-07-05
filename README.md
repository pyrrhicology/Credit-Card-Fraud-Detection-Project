# Project: Credit Card Fraud Detection

## Objective:
This project aimed to develop and evaluate machine learning models to detect fraudulent credit card transactions.

## Dataset:
- Source: "creditcard.csv",
- Size: 284,807 transactions
- Features: 31 columns (Time, V1-V28, Amount, Class)
- Class distribution: 284,315 non-fraudulent (99.83%) vs. 492 fraudulent (0.17%) transactions

## Methodology:

1. Data Preprocessing:
   - Scaled the 'Amount' feature
   - Removed the 'Time' column
   - Split data into Training (80%) and Testing (20%) sets
     
2. Models Implemented:
   - Logistic Regression
   - Decision Tree
   - Artificial Neural Network
   - Gradient Boosting Machine
     
3. Model Evaluation:
   - Used ROC Curves and AUC for model comparison

## Results:
1. Logistic Regression:
   - The model identified several significant features (V4, V10, V14, V17, V12, V16, V18)
   - ROC Curve shows good performance
  
2. Decision Tree:
   - Visualization shows the tree structure
   - Key decision nodes include V17, V14, V12, V10, V16, V8, and V26
  
3. Artificial Neural Network:
   - Network architecture visualized
   - Complex structure with multiple hidden layers
  
4. Gradient Boosting Machine:
   - Training time: ~220 seconds
   - ROC curve shows excellent performance
   - AUC: 0.9555, indicating high accuracy in distinguishing between fraudulent and non-fraudulent transactions
  
## Conclusion:
The Gradient Boosting Machine model appears to perform best, with an AUC of 0.9555. This suggests it has a strong ability to detect fraudulent transactions while minimizing false positives. The other models also perform well, as evidenced by their ROC curves.
