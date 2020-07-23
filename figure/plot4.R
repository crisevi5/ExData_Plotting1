#open graphic file device
png(filename = "plot4.png")

#set mfrow
par(mfrow=c(2,2))

#create plot 1
plot(x = dt,
     y = hpcs$Global_active_power,
     type="l",
     xlab = "", 
     ylab = "Global active power")

#create plot 2
plot(x = dt,
     y = hpcs$Voltage,
     type="l",
     xlab = "datetime", 
     ylab = "Voltage")

#create plot 3
plot(x = dt,
     y = hpcs$Sub_metering_1,
     type="l",
     xlab = "", 
     ylab = "Energy sub metering")

#add lines of the second group to plot 3
lines(x = dt,
      y = hpcs$Sub_metering_2,
      col="red")

#add lines of the third group to plot 3
lines(x = dt,
      y = hpcs$Sub_metering_3,
      col="blue")

#add legends to plot 3
legend("topright",lty = 1,
       col = c("black","red","blue"),
       legend = paste("sub_metering_",1:3),
       bty = "n")

#create plot 4
plot(x = dt,
     y = hpcs$Global_reactive_power,
     type="l",
     xlab = "datetime", 
     ylab = "Global reactive power")

#close graphic file device
dev.off()

#x-axis labels are in Spanish
