source("GetData.R")
png(filename = "Plot4.png")
#Plot 4
par(mfrow=c(2,2))
plot(DS$DT, DS$Global_active_power, type = "l", 
     ylab = "Global Active Power",
     xlab = " ")
plot(DS$DT, DS$Voltage, type = "l", 
     ylab = "Voltage",
     xlab = "datetime")
plot(DS$DT, DS$Sub_metering_1, type = "l", 
     ylab = "Energy sub metering",
     xlab = " ")
lines(DS$DT, DS$Sub_metering_2, col = "red")
lines(DS$DT, DS$Sub_metering_3, col = "blue")
legend("topright", legend = paste0("Sub_metering_", 1:3), 
       lty = 1, col = c("black", "red", "blue"), cex = 0.8)
plot(DS$DT, DS$Global_reactive_power, type = "l", 
     ylab = "Global_reactive_power",
     xlab = "datetime")
dev.off()
