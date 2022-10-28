# Cleaning-Data-with-pandas
### Exploring data of *fraudulent job postings*, cleaning and building a predictive model.  
  
In this project I processed, cleaned and explored data from various job postings. After feature engineering I came up with useful information that could help me see patterns in the data. I then further converted non-numerical variables using a target encoder. Finally I implemented both a Decision Tree model for easy visualization to predict which postings are fraudulent, and a Random Forest model.   
  
The latter had an accuracy of aroun 96.38% on the test data, with a maximum depth of 10. While the DT model did not underperform either with a stunning 95.97% with a max depth of just 3.  
  
 The problem with this is that even though the percentage sounds very high, in reality, it is partially due to the fact that the data that we have are substantially unbalanced. This means that we have a tiny percentage of fraudulent postings. To be precise, if we were to guess all postings in the dataset as non-fraudulent, we would get 95.16% accuracy. So can we say that this model is actually good? Most definitely not!  
   
This has been a good lesson as to dealing with imbalanced dataset when trying to make predictions.
