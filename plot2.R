#create plot 2
hpc_full = read.csv2("household_power_consumption.txt")
hpc = hpc_full[hpc_full$Date=="1/2/2007" | hpc_full$Date=="2/2/2007", ]

dati <- as.POSIXct(strptime(paste(hpc$Date,hpc$Time,sep=" "), format="%d/%m/%Y %H:%M:%S"))
gap <- as.numeric(as.character(hpc$Global_active_power))

png(filename="plot2.png")
plot(dati, gap, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()