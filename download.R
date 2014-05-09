fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
temp <- tempfile()

if(!file.exists("data")) {
  dir.create("data")
  
  download.file(fileUrl, destfile = temp)
  data <- read.table(unz(temp, "household_power_consumption.txt"))
  unlink(temp)
}

####  Function that downloads file from specified url and unzips into a destination directory.
####  Function will not run if a directory exists.

download <- function(url, dataFileName, zipFileName) {

  #   url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  #   dataFileName <- "household_power_consumption.txt"
  #   zipFilename <- "household_power_consumption.zip"
  
  ## Establish destinations for zip and data files.
  dataDirPath <- "data"
  datasetDirPath <- file.path(dataDirPath, dataFileName)
  zipPath <- file.path(dataDirPath, zipFilename)
  
  
  ## Downloading/Unzipping data
  if(!file.exists(dataDirPath)){ 
    dir.create(dataDirPath) 
  }
  
  if(!file.exists(zipPath)){ 
    download.file(Url, zipPath, mode="wb")
  }
  
  if(!file.exists(datasetDirPath)) { 
    unzip(zipPath, exdir=dataDirPath)
  }
  
}


