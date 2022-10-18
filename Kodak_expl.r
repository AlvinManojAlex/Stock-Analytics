# import the required libraries

library("quantmod")
library("TTR")

# Use Yahoo finance API to get the stock price of Eastman Kodak Company

df_kodk <- getSymbols("KODK", src = "yahoo", auto.assign = FALSE)
summary(df_kodk)

# Proceed with exploratory analysis

# Plotting Closing price of Kodak Stock
plot(df_kodk$KODK.Close,main = 'Kodak Stock Closing Price')

# Plotting Maximum price of Kodak Stock
chart_Series(df_kodk$KODK.High,name="Kodak Stock Max Price")

# Plotting all attributes of stock price from 2021 - 2022, i.e.,Post Lockdown era
chartSeries(df_kodk,name="Kodak Stock Price",theme = 'white',subset='2021::2022')

