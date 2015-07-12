dataFilepath = "household_power_consumption.txt"
interestRange <- c("1/2/2007", "2/2/2007")

data <- read.csv(dataFilepath, sep = ";", na.strings = "?", 
                 colClasses = c("factor", "factor", "numeric", "numeric", 
                                "numeric", "numeric", "numeric", "numeric", "numeric"))
data = with(data, subset(data, is.element(data$Date, interestRange)))
data$DateTime <- strptime(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")