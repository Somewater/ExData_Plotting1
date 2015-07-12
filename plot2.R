# load and prepare data
source("load-data.R")

# create plot
png(filename = "plot2.png", width = 480, height = 480)

with(data, plot(DateTime, Global_active_power, type = "l", 
                xlab = "", ylab = "Global Active Power (kilowatts)"))

dev.off()