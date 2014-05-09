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

download <- function(url, dataDirPath, dataSetDirPath, zipFileName,) {
  
  ## Check if dir for data exists. Create dir if not.
  if (!file.exists("data.zip")) {
    dir.create("data")
    
    ## Download file
    fileUrl <- url
    download.file(fileUrl,destination)
    
    ## Unzip file
    unzip(destination, exdir="./data")
  }
  
}


