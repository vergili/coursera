#
#R code for Week1 project  plot 2 


data <- read.csv("ExploratoryDataAnalysis/household_power_consumption.txt",sep=";",header=TRUE)

data2 = subset(data, data$Date=="1/2/2007" | data$Date=="2/2/2007")


k = as.POSIXlt(paste(data2$Date, data2$Time), format="%d/%m/%Y %H:%M:%S")

plot(k, as.numeric(as.character(data2$Global_active_power)), type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.copy(png, file = "plot2.png", width=480, height=480, units="px")
dev.off() 
