# import the required libraries

library("quantmod")
library("TTR")
library("car")

# Reading Google stock from CSV

df_google = read.csv("./Dataset/Google_Stock_Price_Test.csv")
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

# Multiple Linear regression

df_train_mlm = data.frame(Open=df_google$Open, High=df_google$High, Low=df_google$Low, Close=df_google$Close, AvgPrice=AvgPrice)
multiple_relation = lm(AvgPrice~Open+Close, data=df_train_mlm)
summary(multiple_relation)
avPlots(multiple_relation)


