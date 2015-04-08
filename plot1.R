## This R-Script creates plot2.png

# Load data
file1<- "./project1/household_power_consumption.txt"
data <- read.table(file1, header=T, nrows=69516 ,colClasses=c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"), sep=";", na.strings="?")
data <- data[66637:69516,]
data$Date <- as.Date(data$Date, "%d/%m/%Y")
data$datetime <- paste(data$Date, data$Time)
data$datetime <- strptime(data$datetime, "%Y-%m-%d %H:%M:%S", tz="UTC")

# Creating plot 1, saving as png file
png(file="./ExData_Plotting1/plot1.png")
hist(data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()

#end
