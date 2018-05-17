#create global active power plot
hpc_full = read.csv2("household_power_consumption.txt")
hpc = hpc_full[hpc_full$Date=="1/2/2007" | hpc_full$Date=="2/2/2007", ]

gap = as.numeric(as.character(hpc$Global_active_power))
png(filename="plot1.png")
hist(gap, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

dev.off()
