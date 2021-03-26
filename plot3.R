setwd("D:/DataScience2021/exdata_data_household_power_consumption")
data <- read.table("D:/DataScience2021/exdata_data_household_power_consumption/household_power_consumption.txt", header = TRUE, na.strings = "?", sep = ";", dec = ".")

data <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")
data$dateTime <- as.POSIXct(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")
data$Global_active_power <- as.numeric(data$Global_active_power)
png("plot3.png", width=480, height=480)

plot(data$dateTime, data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(data$dateTime, data$Sub_metering_2, col="red")
lines(data$dateTime, data$Sub_metering_3,col="blue")
legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1), lwd=c(1,1))

dev.off()
