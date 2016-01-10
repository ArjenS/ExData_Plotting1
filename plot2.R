
library(ggplot2)
#script assumes that 1/2/2007 and 2/2/2007 data from the household_power_consumption dataset have been read into a dataframe called dataset.
#solution is probably simpler when using the base plot functionality..

windows()
p <- qplot(dataset$datetime,dataset$Global_active_power,geom="line",xlab=NULL, ylab="Global Active Power (kilowatts)")
#Add the abbreviated weekdays as labes on the x-axis:
p <- p + scale_x_datetime(date_breaks="1 day",date_labels="%a")
#Draw a border around the plot:
p <- p + theme(panel.border = element_rect(colour = "black",fill=NA,size=1))

print(p)
dev.copy(png,file= "ExData_Plotting1/plot2.png")
dev.off()


