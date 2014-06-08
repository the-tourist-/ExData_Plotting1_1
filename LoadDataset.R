setwd("~/GitHub/ExData_Plotting1")
if (!file.exists("exdata_data_household_power_consumption.zip"))
  download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
                "exdata_data_household_power_consumption.zip")
if (!file.exists("household_power_consumption.txt"))
  unzip("exdata_data_household_power_consumption.zip")
household_power_consumption <- read.csv("~/GitHub/ExData_Plotting1/household_power_consumption.txt", sep=";", na.strings="?", colClasses=c("character", "character", rep("numeric", 6)))
data <- household_power_consumption[with(household_power_consumption, Date=="1/2/2007" | Date=="2/2/2007"),]
data$DateTime <- as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")
rownames(data)=NULL
