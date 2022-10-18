# import the required libraries

library("quantmod")
library("TTR")

# Use Yahoo finance API to get the stock price of Eastman Kodak Company

df_google = getSymbols("GOOG", src = "yahoo", auto.assign = FALSE)
summary(df_google)

# Correlation Matrix to find out relation b/w each parameter

cor(df_google)

# Linear reg? Multiple reg? 