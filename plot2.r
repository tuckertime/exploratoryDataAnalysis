
## Load Data
fulldata <- read.table( "C:/Users/919647/Documents/PersonalDev/R/household_power_consumption.txt", sep=";" , header=TRUE, stringsAsFactors=FALSE)
##Convert to Date time here?

newdata <- fulldata[ which(fulldata$Date == "1/2/2007" | fulldata$Date =="2/2/2007"), ]

#Attach subset
attach(newdata)

##Create dataset for histograph
date <- as.Date(newdata$Date, format= "d/m/%y")
datet<- paste(date, newdata$Time, sep=" ")
datetime <- as.POSIXct(datet)
globalActivePower<- as.numeric(newdata$Global_active_power)
##Create PNG
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="1", xlab="", ylab = "Global Active Power (kilowatts)")

dev.off()

