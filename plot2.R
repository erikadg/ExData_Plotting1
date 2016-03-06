### Second graphic plot2.png
file_consumption <- file("household_power_consumption.txt")
data_consumption = read.table(text = grep("^[1,2]/2/2007", readLines(file_consumption), value = TRUE),header = TRUE, sep = ";", col.names = c("Date", "Time", "Active Power", "Reactive Power", "Voltage", "Intensity", "Sub1", "Sub2", "Sub3"))
dates <- strptime(paste(data_consumption$Date, data_consumption$Time), "%d/%m/%Y %H:%M") 
png(filename = "plot2.png", width = 480, height = 480, units = "px")
plot(dates, data_consumption$Active.Power, xlab = '', ylab = "Global Active Power (kilowatts)", type = 'l')
dev.off()