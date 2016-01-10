#script assumes that 1/2/2007 and 2/2/2007 data from the household_power_consumption dataset have been read into a dataframe called dataset.

windows()


par(mar = c(2,4,2,4))

# get the range for the x and y axis 
xrange <- range(dataset$datetime) 
yrange <- range(dataset$Sub_metering_1) 

#set up the plot
plot(xrange, yrange, type="n", ylab="Energy sub metering",xlab=NULL ) 
#add the lines
lines(dataset$datetime,dataset$Sub_metering_1)
lines(dataset$datetime,dataset$Sub_metering_2, col = "red")
lines(dataset$datetime,dataset$Sub_metering_3, col = "blue")
#add legend:
legend("topright",lty=c(1,1),col=c("black","red","blue"),legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'))
dev.copy(png,file= "ExData_Plotting1/plot3.png")
dev.off()
