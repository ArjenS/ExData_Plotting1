#Script assumes variable data to be loaded with the relevant records for 1-2-2007 and 2-2-2007:

windows()
with(dataset,hist(Global_active_power,col="red",main = "Global Active Power",xlab=("Global Active Power (kilowatts)"),ylab=("Frequency")))
dev.copy(png,file= "ExData_Plotting1/plot1.png")
dev.off()