#open graphic file device
png(filename = "plot3.png")

#create pricipal plot
plot(x = dt,
     y = hpcs$Sub_metering_1,
     type="l",
     xlab = "", 
     ylab = "Energy sub metering")

#add lines of the second group
lines(x = dt,
      y = hpcs$Sub_metering_2,
      col="red")

#add lines of the third group
lines(x = dt,
      y = hpcs$Sub_metering_3,
      col="blue")

#add legends
legend("topright",lty = 1,
       col = c("black","red","blue"),
       legend = paste("sub_metering_",1:3))

#close graphic file device
dev.off()

#x-axis labels are in Spanish
