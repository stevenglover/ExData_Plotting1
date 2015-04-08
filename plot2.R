## This R-Script creates plot2.png

# Load data
file1<- "./project1/household_power_consumption.txt"
data <- read.table(file1, header=T, nrows=69516 ,colClasses=c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"), sep=";", na.strings="?")
data <- data[66637:69516,]
data$Date <- as.Date(data$Date, "%d/%m/%Y")
data$datetime <- paste(data$Date, data$Time)
data$datetime <- strptime(data$datetime, "%Y-%m-%d %H:%M:%S", tz="UTC")

# Creating plot 2, saving as png file
png(file="./ExData_Plotting1/plot2.png")
with(data, plot(datetime, Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab=""))
dev.off()

#end
