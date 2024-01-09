# Stock Price Prediction Project

*By Nguyễn Trí Cao Sơn*

This is my attempt to predict stock price difference by using Machine Learning and Deep Learning model. A stock price prediction is calculated by subtracting the price of stock at the current instance from the price of stock at the next instance (next minute, next hour, next day,...).

Click [here](https://github.com/nguyentricaoson/Data_project/blob/main/Stock/Stock%20price.ipynb) to access my work.

### Methodology

- Create a dataframe with stock price difference and datetime as index.
- Divide data into features and target. The purpose is to use the first n instances of data to to predict the (n+1)th instance.
- Split the data into training, validating and testing set with a proportion of 80%, 10% and 10%, respective ly and sequentially.
- Feed the training data into 3 models: Long Short Term Memory, Random Forest and Gradient Boosting. The winner model will be decided by its performance on the validating set, specifically RMSE optimization.
- The best model will be fine tuned on the validating set and then evaluated using the testing set.
- Finally, the model will be compared to a naive model. A naive model always predicts the next price instance to be the same as the current price, hence a price difference of 0.

### Findings

- The random forest model appears to have the best performance with a RMSE of about 0.06.
- The model performs better than a naive model in terms of RMSE.
- If the main purpose of the model builder was to predict whether stock price would go up or down, this model wouldn't be too effective. In that case, a classification model would fit better.
- In no means this model would be used to actually predict stock price. The stock market is extremely complex and is affected by numerous factors. If building a model alone could beat the market, everyone would be rich by now.
