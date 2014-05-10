library(data.table)
library(datasets)
source("download.R")


##  Assign values to variables that are used for arguments in the download function.
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
dataFileName <- "household_power_consumption.txt"
zipFileName <- "household_power_consumption.zip"

##  Download function takes url of desired file, desired file name, and name of zip file.
fileLocation <- download(url, dataFileName, zipFileName)

##  Read in file, but only rows from 2007-02-01 through 2007-02-02.
data <- read.table(fileLocation, skip = 66637, nrow = 2880, sep = ";", col.names = colnames(read.table(fileLocation, nrow = 1, header = TRUE, sep=";")))
data <- na.omit(data)

##  Convert date format to YYYY-MM-DD.
data$Date <- as.Date(strptime(data$Date,format="%d/%m/%Y"))

hist(data$Global_active_power,main = "Global Active Power",col="red",xlab="Global Active Power (Kilowatts)")



