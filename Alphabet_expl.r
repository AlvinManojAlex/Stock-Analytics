# import the required libraries

library("quantmod")
library("TTR")

# Use Yahoo Finance API to store the stock price of Alphabet inc. in df_alp

df_alp <- getSymbols("GOOG", src = "yahoo", auto.assign = FALSE)

# Proceed with exploratory analysis

summary(df_alp)

# Statistical Analysis

# From Alphabet Highest value
# Minimum value

min(df_alp$GOOG.High)

# 1st quantile
Q1=quantile(df_alp$GOOG.High,0.25)
Q1

# Median
median(df_alp$GOOG.High)

# Mean
mean(df_alp$GOOG.High)

# 3rd quantile
Q3=quantile(df_alp$GOOG.High,0.75)
Q3

# Max value
max(df_alp$GOOG.High)

# Standard Deviation
sd(df_alp$GOOG.High)

# Inter Quartile Range
InQR=IQR(df_alp$GOOG.High)
InQR

# Outliers

Tmin=Q1-(1.5*InQR)
Tmax=Q3+(1.5*InQR)
out=df_alp$GOOG.High[which(df_alp$GOOG.High < Tmin | df_alp$GOOG.High > Tmax)]
paste("Outliers: ", paste(out, collapse = ", "))

# From Alphabet Lowest value
# Minimum value
min(df_alp$GOOG.Low)

# 1st quantile
Q1=quantile(df_alp$GOOG.Low,0.25)
Q1

# Median
median(df_alp$GOOG.Low)

# Mean
mean(df_alp$GOOG.Low)

# 3rd quantile
Q3=quantile(df_alp$GOOG.Low,0.75)
Q3

# Max value
max(df_alp$GOOG.Low)

# Standard Deviation
sd(df_alp$GOOG.Low)

# Inter Quartile Range
InQR=IQR(df_alp$GOOG.Low)
InQR

# Outliers

Tmin=Q1-(1.5*InQR)
Tmax=Q3+(1.5*InQR)
out=df_alp$GOOG.Low[which(df_alp$GOOG.Low < Tmin | df_alp$GOOG.Low > Tmax)]
paste("Outliers: ", paste(out, collapse = ", "))


# From Alphabet Close value
# Minimum value
min(df_alp$GOOG.Close)

# 1st quantile
Q1=quantile(df_alp$GOOG.Close,0.25)
Q1

# Median
median(df_alp$GOOG.Close)

# Mean
mean(df_alp$GOOG.Close)

# 3rd quantile
Q3=quantile(df_alp$GOOG.Close,0.75)
Q3

# Max value
max(df_alp$GOOG.Close)

# Standard Deviation
sd(df_alp$GOOG.Close)

# Inter Quartile Range
InQR=IQR(df_alp$GOOG.Close)
InQR

# Outliers

Tmin=Q1-(1.5*InQR)
Tmax=Q3+(1.5*InQR)
out=df_alp$GOOG.Close[which(df_alp$GOOG.Close < Tmin | df_alp$GOOG.Close > Tmax)]
paste("Outliers: ", paste(out, collapse = ", "))

# Visualization
# On whole dataset

chartSeries(df_alp,name="Alphabet Stock Price",theme = 'white')
chartSeries(df_alp,name="Alphabet Stock Price from 2018 to 2020",theme = 'white',subset='2018::2020')
chartSeries(df_alp,name="Alphabet Stock Price from 2021 to 2022 i.e., post covid-19",theme = 'white',subset='2021::2022')

# From Alphabet Highest Value

plot(df_alp$GOOG.High,main = 'Alphabet Stock Price High Values')
chart_Series(df_alp$GOOG.High,name="Alphabet Stock Price High Values")
boxplot(x = df_alp$GOOG.High, main = "Alphabet Stock Price High Values")

# From Alphabet Lowest Value

plot(df_alp$GOOG.Low,main = 'Alphabet Stock Price Low Values')
chart_Series(df_alp$GOOG.Low,name="Alphabet Stock Price Low Values")
boxplot(x = df_alp$GOOG.Low,main="Alphabet Stock Price Low Values")

# From Alphabet Close Value

plot(df_alp$GOOG.Close,main = 'Alphabet Stock Price Close Values')
chart_Series(df_alp$GOOG.Close,name="Alphabet Stock Price Close Values")
boxplot(x = df_alp$GOOG.Close,main="Alphabet Stock Price Close Values")