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

## Plot 4 seperate graphs in one canvas. Moving clockwise from top left quadrant, graphs are: global active power,
## voltage, global reactive power, and energy submetering. 
png(filename="plot4.png", width=480, height=480)
par(mfrow = c(2,2))
with(data, {
    plot(DateTime, Global_active_power, type = "l", ylab = "Global Active Power", xlab = "")
    plot(DateTime, Voltage, type = "l")
    plot(DateTime, Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab="")
    lines(DateTime, Sub_metering_2, type = "l", col = "red")
    lines(DateTime, Sub_metering_3, type = "l", col = "blue")
    legend("topright", border="white", bty="n",pch = "___", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    plot(DateTime, Global_reactive_power, type = "S")
})
dev.off()