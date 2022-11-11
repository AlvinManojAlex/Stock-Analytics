# import the required libraries

library("car")

# Reading Google stock from CSV

df_google = read.csv("./Dataset/GOOGL.csv")
summary(df_google)

# Making new dataframe for easier training and testing

AvgPrice = (df_google$High + df_google$Low)/2
df_train_lm = data.frame(AvgPrice, df_google$Open)
df_train_lm

# Correlation Matrix to find out relation b/w each parameter

cor(df_train_lm)

# Simple Linear regression

relation = lm(df_train_lm$AvgPrice~df_train_lm$df_google.Open, df_train_lm)
summary(relation)
x = df_train_lm$df_google.Open
plot(x=df_train_lm$df_google.Open,y=df_train_lm$AvgPrice)
abline(a=coefficients(relation)[1], b=coefficients(relation)[2], col="red")

# Calculating the RSS value for the simple linear regression model.

predicted_price = predict(relation, data.frame(df_train_lm$df_google.Open))
difference_price = predicted_price - df_train_lm$AvgPrice
rss = 0
for(i in difference_price){
  rss = rss + i*i
}
print(paste("Residual sum of squares of the simple linear regression model is ", rss))

# Multiple Linear regression

df_train_mlm = data.frame(Open=df_google$Open, High=df_google$High, Low=df_google$Low, Close=df_google$Close, AvgPrice=AvgPrice)
multiple_relation = lm(AvgPrice~Open+Close, data=df_train_mlm)
summary(multiple_relation)
avPlots(multiple_relation)

# Calculating the RSS Value for the multiple linear regression model

predicted_price_mlm = predict(multiple_relation, data.frame(Open=df_train_mlm$Open,Close=df_train_mlm$Close))
difference_price_mlm = predicted_price_mlm - AvgPrice
rss_mlm = 0
for(i in difference_price_mlm){
  rss_mlm = rss_mlm + i*i
}
print(paste("Residual sum of squares of multiple linear regression model is ", rss_mlm))

                              