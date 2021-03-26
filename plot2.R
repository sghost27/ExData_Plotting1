setwd("D:/DataScience2021/exdata_data_household_power_consumption")
data <- read.table("D:/DataScience2021/exdata_data_household_power_consumption/household_power_consumption.txt", header = TRUE, na.strings = "?", sep = ";", dec = ".")

data <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")
data$dateTime <- as.POSIXct(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")
data$Global_active_power <- as.numeric(data$Global_active_power)
png("plot2.png", width=480, height=480)
plot(x = data$dateTime, y = data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()

