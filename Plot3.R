source("GetData.R")
#Plot3
png(filename = "Plot3.png")
plot(DS$DT, DS$Sub_metering_1, type = "l", 
     ylab = "Energy sub metering",
     xlab = " ")
lines(DS$DT, DS$Sub_metering_2, col = "red")
lines(DS$DT, DS$Sub_metering_3, col = "blue")
legend("topright", legend = paste0("Sub_metering_", 1:3), 
       lty = 1, col = c("black", "red", "blue"))
dev.off()