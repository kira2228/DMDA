snowfall <- c(790, 1170.8, 860.1, 1330.6, 630.4, 911.5, 683.5, 996.6, 783.2, 982, 881.8, 1021)
snowfall_timeseries <- ts(snowfall, start = c(2013, 1), frequency = 12)

# Print the timeseries data
print(snowfall_timeseries)

# Plot the timeseries directly in RStudio
plot(snowfall_timeseries, main = "Snowfall Time Series", ylab = "Snowfall (mm)", xlab = "Year")
