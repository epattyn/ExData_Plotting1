setwd("C:/Users/I0407042/OneDrive - Sanofi/Programming/R/Coursera - Dimension Reduction with R (L3)/Week 1 - Exploratory data analysis")

hpc <- read.table("household_power_consumption.txt", header = T,
                sep=";", comment.char="%", stringsAsFactors=FALSE, na.strings="?")

hpc2d <- subset(hpc, hpc$Date=="1/2/2007"|hpc$Date=="2/2/2007")

datetime <- strptime(paste(hpc2d$Date, hpc2d$Time, sep=" "), "%d/%m/%Y %H:%M:%S")



par(mfcol=c(2,2))

plot4<-function(){
  
  plot(datetime,hpc2d$Global_active_power, ylab="Global Active Power", xlab="",type="l")
  
  plot(datetime, hpc2d$Sub_metering_1, type="n", xlab = "", ylab="Energy sub metering")
  lines(datetime, hpc2d$Sub_metering_1, col="black")
  lines(datetime, hpc2d$Sub_metering_2, col="red")
  lines(datetime, hpc2d$Sub_metering_3, col="blue")
  legend("topright", lty=c(1,1,1), bty="n", cex=0.8, xjust=1, col=c("black","red","blue"),
         legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
  plot(datetime, hpc2d$Voltage, ylab="Voltage", type="l")
 
  plot(datetime, hpc2d$Global_reactive_power, type="l", ylab="Global_reactive_power")
  
  dev.copy(png, file="plot4.png", width=480, height=480)
  dev.off()
  
}

plot4()

