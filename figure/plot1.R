#open graphic file device
png(filename = "plot1.png")

#create histogram
hist(hpcs$Global_active_power,
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)",
     col = "red",)

#close graphic file device
dev.off()
