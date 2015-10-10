## Clean the workspace
rm(list=ls())

###################################
#Date: Date in format dd/mm/yyyy
#Time: time in format hh:mm:ss
#Global_active_power: household global minute-averaged active power (in kilowatt)
#Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
#Voltage: minute-averaged voltage (in volt)
#Global_intensity: household global minute-averaged current intensity (in ampere)
#Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
#Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
#Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.

###########################################################
#Target dataset:
#Subset data into dates between: 2007-02-01 and 2007-02-02

###########################################################
#For each plot you should:
#Construct the plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels.
#Name each of the plot files as plot1.png, plot2.png, etc.
#Create a separate R code file (plot1.R, plot2.R, etc.) that constructs the corresponding plot, i.e. code in plot1.R constructs the plot1.png plot. Your code file should include code for reading the data so that the plot can be fully reproduced. You must also include the code that creates the PNG file.
#Add the PNG file and R code file to the top-level folder of your git repository (no need for separate sub-folders)

## Load Data
 fulldata <- read.table( "C:/Users/919647/Documents/PersonalDev/R/household_power_consumption.txt", sep=";" , header=TRUE, stringsAsFactors=FALSE)
 ##Convert to Date time here?
 
 newdata <- fulldata[ which(fulldata$Date == "1/2/2007" | fulldata$Date =="2/2/2007"), ]
 
 #Attach subset
 attach(newdata)
 
 ##Create dataset for histograph
 globalActivePower<- as.numeric(newdata$Global_active_power)
 ##Create PNG
 png("plot1.png", width=480, height=480)
 hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab = "Frequency")
 
 dev.off()
 
 
