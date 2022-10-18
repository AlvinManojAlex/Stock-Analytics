# import the required libraries

library("quantmod")
library("TTR")

# Use Yahoo finance API to get the stock price of Eastman Kodak Company

df_kodk <- getSymbols("KODK", src = "yahoo", auto.assign = FALSE)
#print(df_kodk)

# Proceed with exploratory analysis
plot(df_kodk$KODK.Close,main = 'Kodak Stock Price')
chart_Series(df_kodk$KODK.Close,name="Kodak Stock Price")
chartSeries(df_kodk,name="Kodak Stock Price",theme = 'white')
chartSeries(df_kodk,name="Kodak Stock Price",theme = 'white',subset='2018::2020')
