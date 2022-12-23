setwd("C:/Users/I0407042/OneDrive - Sanofi/Programming/R/Coursera - Dimension Reduction with R (L3)/Week 1 - Exploratory data analysis")

hpc <- read.table("household_power_consumption.txt", header = T,
                sep=";", comment.char="%", stringsAsFactors=FALSE, na.strings="?")

hpc2d <- subset(hpc, hpc$Date=="1/2/2007"|hpc$Date=="2/2/2007")



plot1 <- function() {
  hist(hpc2d$Global_active_power, col="red", xlab="Global Active Power (kilowatts)",
       main="Global Active Power")
  dev.copy(png, file="plot1.png", width=480, height=480)
  dev.off()
}

plot1()



