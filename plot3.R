##  Source data.table and datasets libraries to create data subset and plot graphics.
library(data.table)
library(datasets)

##  Source functions for downloading and creating dataset.
source("download.R")


##  Assign values to variables that are used for arguments in the download function.
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
dataFileName <- "household_power_consumption.txt"
zipFileName <- "household_power_consumption.zip"

##  Download function takes url of desired file, desired file name, and name of zip file.
file <- download(url, dataFileName, zipFileName)

##  Create data table from downloaded file
data <- createTable(file)

##  Plot and save line graph of energy submetering over 2007-02-01 and 2007-02-02.
png(filename="plot3.png", width=480, height=480)
with(data, plot(DateTime, Sub_metering_1, type="l", ylab="Energy sub metering", xlab=""))
with(data, lines(DateTime, Sub_metering_2, type="l", col="red"))
with(data, lines(DateTime, Sub_metering_3, type="l", col="blue"))
legend("topright", pch = "___", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()