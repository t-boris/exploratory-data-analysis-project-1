data <- read.table("./data/household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
data <- subset(data, subset=(Date >="2007-02-01" & Date <= "2007-02-02"))

with(data, {
    plot(Sub_metering_1 ~ Datetime, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
    lines(Sub_metering_2 ~ Datetime, col = 'Red')
    lines(Sub_metering_3 ~ Datetime, col = 'Blue')
    legend("topright", col = c("black", "red", "blue"), cex = 0.8, lty = 1,
           legend = c("Sub_metering_1", 
                      "Sub_metering_2",
                      "Sub_metering_3"))
    
    
})
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()