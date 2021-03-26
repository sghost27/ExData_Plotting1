setwd("D:/DataScience2021/exdata_data_household_power_consumption")
data <- read.table("D:/DataScience2021/exdata_data_household_power_consumption/household_power_consumption.txt", header = TRUE, na.strings = "?", sep = ";", dec = ".")

data <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")

png("plot1.png", width=480, height=480)
hist(as.numeric(data$Global_active_power), col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")

dev.off()
