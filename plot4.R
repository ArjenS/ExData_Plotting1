#script assumes that 1/2/2007 and 2/2/2007 data from the household_power_consumption dataset have been read into a dataframe called dataset.

windows()

#define a frame of a 2x2 plot; 
par(mfrow = c(2,2), mar = c(4,4,2,1), oma= c(0,0,2,0))

#Build the four plots from the dataset:
with(dataset,{
  xrange=range(datetime)
  yrange=range(Global_active_power)
plot(xrange,yrange,ylab="Global Active Power",xlab=NULL)
  lines(x=datetime,y=Global_active_power)
  yrange=range(Voltage)
plot(xrange,yrange,ylab = "Voltage")
  lines(x=datetime,y=Voltage)
  yrange = range(Sub_metering_1)
plot(xrange, yrange, type="n", ylab="Energy sub metering",xlab=NULL ) 
  lines(datetime,Sub_metering_1)
  lines(datetime,Sub_metering_2, col = "red")
  lines(datetime,Sub_metering_3, col = "blue")
  legend("topright",lty=c(1,1),col=c("black","red","blue"),legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'))
  yrange = range(Global_reactive_power)
plot(xrange, yrange, type="n", ylab="Global_reactive_power",xlab=NULL ) 
  lines(datetime,Global_reactive_power)
  })
#Copy the plot to a png file:
dev.copy(png,file= "ExData_Plotting1/plot4.png")
dev.off()
