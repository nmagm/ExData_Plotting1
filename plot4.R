#create plot 4
hpc_full = read.csv2("household_power_consumption.txt")
hpc = hpc_full[hpc_full$Date=="1/2/2007" | hpc_full$Date=="2/2/2007", ]

dati <- as.POSIXct(strptime(paste(hpc$Date,hpc$Time,sep=" "), format="%d/%m/%Y %H:%M:%S"))
gap <- as.numeric(as.character(hpc$Global_active_power))
sm1 <- as.numeric(as.character(hpc$Sub_metering_1))
sm2 <- as.numeric(as.character(hpc$Sub_metering_2))
sm3 <- as.numeric(as.character(hpc$Sub_metering_3))
v <- as.numeric(as.character(hpc$Voltage))
grp <- as.numeric(as.character(hpc$Global_reactive_power))

png(filename="plot4.png")
par(mfrow=c(2,2))
plot(dati, gap, type="l", xlab="", ylab="Global Active Power")
plot(dati, v, type="l", xlab="datetime", ylab="Voltage")
plot(dati, sm1, type="l", col="black", xlab="", ylab="Energy sub metering")
lines(dati, sm2, col="red")
lines(dati, sm3, col="blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=3, col=c("black","red","blue"))
plot(dati, grp, type="l", xlab="datetime", ylab="Global_reactive_power")
dev.off()
