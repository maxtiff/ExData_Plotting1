library(data.table)
source("download.R")


## Assign values to variables that are used for arguments in the download function.
url <- "http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
dataFileName <- "household_power_consumption.txt"
zipFileName <- "household_power_consumption.zip"

## Download function takes url of desired file, desired file name, and name of zip file.
fileLocation <_ download(url, dataFileName, zipFileName)

## Read in file, but only read in observations from 2007-02-01 through 2007-02-02.
completeData <- fread(fileLocation, na.strings=c("?"))


