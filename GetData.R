##1.Read data subset for dates = 2007-02-01 to 2007-02-02
DS <- read.table("household_power_consumption.txt", 
                 header = F, na.strings = "?", 
                 skip = 66637, nrow = 2880, sep=";")
names(DS) <- names(read.table("household_power_consumption.txt", 
                              header = T, na.strings = "?", nrow = 1, sep=";"))
##2.Add Date-Time column DS$DT
DS$DT <- strptime(paste(as.Date(as.character(DS$Date), 
                                format = "%d/%m/%Y"), DS$Time), format = "%Y-%m-%d %H:%M:%S")
