#open graphic file device
png(filename = "plot2.png")

#create plot
plot(x = dt,
     y = hpcs$Global_active_power,
     type="l",
     xlab = "", 
     ylab = "Global active power (kilowatts)")

#close graphic file device
dev.off()

#x-axis labels are in Spanish



