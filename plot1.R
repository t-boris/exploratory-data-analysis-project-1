data <- read.table("./data/household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
data <- subset(data, subset=(Date >="2007-02-01" & Date <= "2007-02-02"))

hist(data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")

globalActivePower <- as.numeric(subSetData$Global_active_power)
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()