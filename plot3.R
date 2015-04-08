## This R-Script creates plot3.png

# Load data
file1<- "./project1/household_power_consumption.txt"
data <- read.table(file1, header=T, nrows=69516 ,colClasses=c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"), sep=";", na.strings="?")
data <- data[66637:69516,]
data$Date <- as.Date(data$Date, "%d/%m/%Y")
data$datetime <- paste(data$Date, data$Time)
data$datetime <- strptime(data$datetime, "%Y-%m-%d %H:%M:%S", tz="UTC")

# Creating plot 3, saving as png file
png(file="./ExData_Plotting1/plot3.png")
with(data, plot(datetime, Sub_metering_1, type="l", ylab="Energy sub metering", xlab=""))
with(data, points(datetime, Sub_metering_2, type="l",col="red"))
with(data, points(datetime, Sub_metering_3, type="l",col="blue"))
legend("topright", lwd=1 ,col=c("black","red","blue"),legend=c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))
dev.off()

#end
