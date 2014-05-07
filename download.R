fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
temp <- tempfile()

if(!file.exists("data")) {
  dir.create("data")
  
  download.file(fileUrl, destfile = temp)
  data <- read.table(unz(temp, "household_power_consumption.txt"))
  unlink(temp)
}




