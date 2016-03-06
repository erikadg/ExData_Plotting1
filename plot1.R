## plot1.R
file_consumption <- file("household_power_consumption.txt")
data_consumption = read.table(text = grep("^[1,2]/2/2007", readLines(file_consumption), value = TRUE),header = TRUE, sep = ";", col.names = c("Date", "Time", "Active Power", "Reactive Power", "Voltage", "Intensity", "Sub1", "Sub2", "Sub3"))
png(filename = "plot1.png", width = 480, height = 480, units = "px")
hist(data_consumption$Active.Power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()
