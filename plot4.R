require(datasets)
png(file="plot4.png")
par(mfcol=c(2,2))

# plot 1 (top left)
with (data, plot(Global_active_power ~ DateTime, type="l", xlab="", ylab="Global Active Power"))

# plot 2 (bottom left)
with (data, plot(Sub_metering_1 ~ DateTime, type="l", xlab="", ylab="Energy sub metering", col="black"))
with (data, points(Sub_metering_2 ~ DateTime, type="l", col="red"))
with (data, points(Sub_metering_3 ~ DateTime, type="l", col="blue"))
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lwd=1)

# plot 3 (top right)
with (data, plot(Voltage ~ DateTime, type="l", xlab="datetime"))

# plot 4 (bottom right)
with (data, plot(Global_reactive_power ~ DateTime, type="l", xlab="datetime"))

dev.off()
