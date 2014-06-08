require(datasets)
png(file="plot2.png")
with (data, plot(Global_active_power ~ DateTime, type="l", xlab="", ylab="Global Active Power (kilowatts)"))
dev.off()
