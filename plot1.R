library(data.table)
setwd("~/ExData_Plotting1")
source("download.R")


## Assign values to variables that are used for arguments in the download function.
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
dataFileName <- "household_power_consumption.txt"
zipFileName <- "household_power_consumption.zip"

## Download function takes url of desired file, desired file name, and name of zip file.
download(url, dataFileName, zipFileName)

## Read in file, but only read in observations from 2007-02-01 through 2007-02-02.
completeData <- fread("./data/household_power_consumption.txt", na.strings=c("?"))


