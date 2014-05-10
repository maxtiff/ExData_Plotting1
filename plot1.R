library(data.table)
source("download.R")


## Assign values to variables that are used for arguments in the download function.
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
dataFileName <- "household_power_consumption.txt"
zipFileName <- "household_power_consumption.zip"

## Download function takes url of desired file, desired file name, and name of zip file.
fileLocation <- download(url, dataFileName, zipFileName)

## Read in file, and convert date format to YYYY-MM-DD.
completeData <- fread(fileLocation, na.strings=c("?"), colClasses="numeric")
completeData$Date <- as.Date(strptime(completeData$Date,format="%d/%m/%Y"))

