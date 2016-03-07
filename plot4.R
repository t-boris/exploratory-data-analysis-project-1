data <- read.table("./data/household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
data <- subset(data, subset=(Date >="2007-02-01" & Date <= "2007-02-02"))

par(mfrow = c(2, 2))
with(data, {
    plot(Global_active_power ~ Datetime, type = "l", xlab = "", ylab = "Global Active Power")
    plot(Voltage ~ Datetime, type = "l", xlab = "datetime", ylab = "Global Active Power")
    plot(Sub_metering_1 ~ Datetime, type = "l", xlab = "", ylab = "Energy sub metering")
    lines(Sub_metering_2 ~ Datetime, col = "red")
    lines(Sub_metering_3 ~ Datetime, col = "blue")
    legend("topright", col = c("black", "red", "blue"), cex = 0.8, lty = 1,
           legend = c("Sub_metering_1", 
                      "Sub_metering_2",
                      "Sub_metering_3"))
    plot(Global_reactive_power ~ Datetime, type = "l", xlab = "", ylab = "Global Reactive Power")
})
dev.copy(png, file="plot4.png", height=480, width=480)
dev.off()