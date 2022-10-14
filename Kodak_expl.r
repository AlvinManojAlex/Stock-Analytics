# import the required libraries

library("quantmod")
library("TTR")

# Use Yahoo finance API to get the stock price of Eastman Kodak Company

df_kodk <- getSymbols("KODK", src = "yahoo", auto.assign = FALSE)

# Proceed with exploratory analysis