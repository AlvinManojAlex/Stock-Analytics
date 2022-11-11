# import the required libraries
library("quantmod")
library("TTR")

# Use Yahoo finance API to get the stock price of Eastman Kodak Company
df_kodk <- getSymbols("KODK", src = "yahoo", auto.assign = FALSE)

# Proceed with exploratory analysis
summary(df_kodk)

# From Kodak Highest value 
# Minimum value
min(df_kodk$KODK.High)

# 1st quantile
Q1=quantile(df_kodk$KODK.High,0.25)
Q1

# Median
median(df_kodk$KODK.High)

# Mean
mean(df_kodk$KODK.High)

# 3rd quantile
Q3=quantile(df_kodk$KODK.High,0.75)
Q3

# Max value
max(df_kodk$KODK.High)

# Standard Deviation of the highest value
sd(df_kodk$KODK.High)

# Inter Quartile Range
InQR=IQR(df_kodk$KODK.High)
InQR

# Outliers
Tmin=Q1-(1.5*InQR)
Tmax=Q3+(1.5*InQR)
out=df_kodk$KODK.High[which(df_kodk$KODK.High < Tmin | df_kodk$KODK.High > Tmax)]
paste("Outliers: ", paste(out, collapse = ", "))


# From Kodak Lowest value
# Minimum value

min(df_kodk$KODK.Low)

# 1st quantile
Q1=quantile(df_kodk$KODK.Low,0.25)
Q1

# Median
median(df_kodk$KODK.Low)

# Mean
mean(df_kodk$KODK.Low)

# 3rd quantile
Q3=quantile(df_kodk$KODK.Low,0.75)
Q3

# Max value
max(df_kodk$KODK.Low)

# Standard Deviation
sd(df_kodk$KODK.Low)

# Inter Quartile Range
InQR=IQR(df_kodk$KODK.Low)
InQR

# Outliers
Tmin=Q1-(1.5*InQR)
Tmax=Q3+(1.5*InQR)
out=df_kodk$KODK.Low[which(df_kodk$KODK.Low < Tmin | df_kodk$KODK.Low > Tmax)]
paste("Outliers: ", paste(out, collapse = ", "))


# From Kodak Close value
# Minimum value

min(df_kodk$KODK.Close)

# 1st quantile
Q1=quantile(df_kodk$KODK.Close,0.25)
Q1

# Median
median(df_kodk$KODK.Close)

# Mean
mean(df_kodk$KODK.Close)

# 3rd quantile
Q3=quantile(df_kodk$KODK.Close,0.75)
Q3

# Max value
max(df_kodk$KODK.Close)

# Standard Deviation
sd(df_kodk$KODK.Close)

# Inter Quartile Range
InQR=IQR(df_kodk$KODK.Close)
InQR

# Outliers
Tmin=Q1-(1.5*InQR)
Tmax=Q3+(1.5*InQR)
out=df_kodk$KODK.Close[which(df_kodk$KODK.Close < Tmin | df_kodk$KODK.Close > Tmax)]
paste("Outliers: ", paste(out, collapse = ", "))

# Visualization
# On whole dataset

chartSeries(df_kodk,name="Kodak Stock Price",theme = 'white')
chartSeries(df_kodk,name="Kodak Stock Price from 2018 to 2020",theme = 'white',subset='2018::2020')

# From Kodak Highest Value

plot(df_kodk$KODK.High,main = 'Kodak Stock Price High Values')
chart_Series(df_kodk$KODK.High,name="Kodak Stock Price High Values")
boxplot(x = df_kodk$KODK.High, main = "Kodak Stock Price High Values")

# From Kodak Lowest Value

plot(df_kodk$KODK.Low,main = 'Kodak Stock Price Low Values')
chart_Series(df_kodk$KODK.Low,name="Kodak Stock Price Low Values")
boxplot(x = df_kodk$KODK.Low,main="Kodak Stock Price Low Values")

# From Kodak Close Value

plot(df_kodk$KODK.Close,main = 'Kodak Stock Price Close Values')
chart_Series(df_kodk$KODK.Close,name="Kodak Stock Price Close Values")
boxplot(x = df_kodk$KODK.Close,main="Kodak Stock Price Close Values")
