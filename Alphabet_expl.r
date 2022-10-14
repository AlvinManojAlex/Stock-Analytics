# import the required libraries

library("quantmod")
library("TTR")

# Use Yahoo Finance API to store the stock price of Alphabet inc. in df_alp

df_alp <- getSymbols("GOOG", src = "yahoo", auto.assign = FALSE)

# Proceed with exploratory analysis