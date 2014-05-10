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