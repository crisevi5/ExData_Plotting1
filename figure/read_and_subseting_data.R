#vector of classes
clases <- c(rep("character",times=2),rep("numeric",times=7))

#read file and assign the data to hcp
hpc <- read.table(file = "../household_power_consumption.txt",
                  header = TRUE,
                  sep = ";",
                  na.strings = "?",
                  colClasses = clases)


#convert to dates and assign to dates/times.
dates <- as.Date(hpc$Date,"%d/%m/%Y")

#change character data to dates/times.
hpc$Date <- dates

#subsetting data according to the required dates and assign data to hpcs.
hpcs <- hpc[hpc$Date >="2007-02-01" & hpc$Date<="2007-02-02",]

#join dates and times
#convert to POSIXct
dt <- as.POSIXct(paste(hpcs$Date, hpcs$Time))
