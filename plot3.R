# load and prepare data
source("load-data.R")

# create plot
png(filename = "plot3.png", width = 480, height = 480)

with(data, plot(DateTime, Sub_metering_1, type = "l", xlab = "", 
                ylab = "Energy sub metering"))
with(data, lines(DateTime, Sub_metering_2, col = "red"))
with(data, lines(DateTime, Sub_metering_3, col = "blue"))
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       col = c("black", "red", "blue"), lty = c(1,1,1), lwd = c(1,1,1))

dev.off()