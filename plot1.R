
dataFile <- "C:/Users/user/Documents/household_power_consumption.txt" 
# reading the file from the location
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
#reads file in table format and creates a datframe from it 
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,] # data only from these particular months

#str(subSetData)
globalActivePower <- as.numeric(subSetData$Global_active_power)
#converting the columns to numeric 
#setting the height and width of the png file
png("plot1.png", width=480, height=480)
#annotating the graph
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()