#file assumes working directory to be set to the directory containing the extracted dataset.
#read files:

#define datafile as a file with indicated format
file <- 'exdata-data-household_power_consumption/household_power_consumption.txt'

dataset <- read.table(file,header=TRUE,sep=";",na.strings="?")

#subset only the data required for the excercise:
dataset <- dataset[(dataset$Date == "1/2/2007") | (dataset$Date == "2/2/2007"),]

#combine data and time column to datetime:

dataset$datetime <- strptime(paste(dataset$Date,dataset$Time),format = "%d/%m/%Y %H:%M:%S")
#dataset$day_of_week <- weekdays(dataset$datetime,abbreviate = TRUE)