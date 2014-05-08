source("GetData.R")
#Plot2
png(filename = "Plot2.png")
plot(DS$DT, DS$Global_active_power, type = "l", 
     ylab = "Global Active Power (kilowatts)",
     xlab = " ")
dev.off()