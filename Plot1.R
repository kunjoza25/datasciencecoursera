library(data.table)
library(dplyr)
#Reading, naming and subsetting power consumption data
power <- read.table("C:\\Users\\Anshula\\Desktop\\Kunj\\Data Science Specialization\\Exploratory Data Analysis\\household_power_consumption.txt",skip=1,sep=";")
names(power) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
subpower <- subset(power,power$Date=="1/2/2007" | power$Date =="2/2/2007")

#calling the basic plot function
print(hist(as.numeric(as.character(subpower$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)"))

# annotating graph
title(main="Global Active Power")