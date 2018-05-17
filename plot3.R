#create plot 3
hpc_full = read.csv2("household_power_consumption.txt")
hpc = hpc_full[hpc_full$Date=="1/2/2007" | hpc_full$Date=="2/2/2007", ]

dati <- as.POSIXct(strptime(paste(hpc$Date,hpc$Time,sep=" "), format="%d/%m/%Y %H:%M:%S"))

sm1 <- as.numeric(as.character(hpc$Sub_metering_1))
sm2 <- as.numeric(as.character(hpc$Sub_metering_2))
sm3 <- as.numeric(as.character(hpc$Sub_metering_3))

png(filename="plot3.png")
plot(dati, sm1, type="l", col="black", xlab="", ylab="Energy sub metering")
lines(dati, sm2, col="red")
lines(dati, sm3, col="blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=3, col=c("black","red","blue"))
dev.off()
