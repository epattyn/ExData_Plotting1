setwd("C:/Users/I0407042/OneDrive - Sanofi/Programming/R/Coursera - Dimension Reduction with R (L3)/Week 1 - Exploratory data analysis")

hpc <- read.table("household_power_consumption.txt", header = T,
                sep=";", comment.char="%", stringsAsFactors=FALSE, na.strings="?")

hpc2d <- subset(hpc, hpc$Date=="1/2/2007"|hpc$Date=="2/2/2007")

datetime <- strptime(paste(hpc2d$Date, hpc2d$Time, sep=" "), "%d/%m/%Y %H:%M:%S")



plot2 <- function() {
  plot(datetime, hpc2d$Global_active_power, ylab="Global Active Power (kilowatts)",
       xlab="", type="l")
  dev.copy(png, file="plot2.png", width=480, height=480)
  dev.off()
}

plot2()

