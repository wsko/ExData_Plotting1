source("GetData.R")
#Plot1
png(filename = "Plot1.png")
hist(DS$Global_active_power, main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", col = "red" )
dev.off()