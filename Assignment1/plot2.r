## Clean the workspace
rm(list=ls())

## Load Data
fulldata <- read.table( "/Users/itstuckertime/documents/coursera/household_power_consumption.txt", sep=";" , header=TRUE, stringsAsFactors=FALSE)

newdata <- fulldata[ which(fulldata$Date == "1/2/2007" | fulldata$Date =="2/2/2007"), ]


##Create dataset for histograph
datet<- paste(newdata$Date, newdata$Time, sep=" ")
datetime <- as.POSIXct(strptime(datet, "%d/%m/%Y %H:%M:%S"))
globalActivePower<- as.numeric(newdata$Global_active_power)

##Create PNG
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab = "Global Active Power (kilowatts)")

dev.off()
