####  Function downloads file from specified url and unzips the downloaded file into a destination directory.
####  Function will not run if a directory of data previously exists.

download <- function(url, dataFileName, zipFileName) {

  #   url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  #   dataFileName <- "household_power_consumption.txt"
  #   zipFileName <- "household_power_consumption.zip"
  
  ## Establish destinations for zip and data files.
  dataDirPath <- "data"
  datasetDirPath <- file.path(dataDirPath, dataFileName)
  zipPath <- file.path(dataDirPath, zipFileName)
  
  ## Downloading/Unzipping data *iff* data doesn't already exist
  if(!file.exists(dataDirPath)){ 
    dir.create(dataDirPath) 
  }
  
  ## Validate if compressed file already exists.
  if(!file.exists(zipPath)){ 
    download.file(url, zipPath, mode="wb")
  }
  
  ## Validate if decompressed file exists in dir.
  if(!file.exists(datasetDirPath)) { 
    unzip(zipPath, exdir=dataDirPath)
  }
  
  return(datasetDirPath)
  
}


# fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
# temp <- tempfile()
# 
# if(!file.exists("data")) {
#   dir.create("data")
#   
#   download.file(fileUrl, destfile = temp)
#   data <- read.table(unz(temp, "household_power_consumption.txt"))
#   unlink(temp)
# }