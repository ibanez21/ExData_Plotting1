hpc <- read.csv("./household_power_consumption.txt", stringsAsFactors=FALSE, header=TRUE, sep=";")
hpc$Date <- as.Date(hpc$Date, format="%d/%m/%Y")
subset_hpc <- subset(hpc, Date >= "2007-02-01" & Date <= "2007-02-02",)
dt <- strptime(paste(subset_hpc$Date, subset_hpc$Time, sep=" "), "%Y-%m-%d %H:%M:%S")
globalactivepower <- as.numeric(subset_hpc$Global_active_power)

png("plot2.png",height=480,width=480)
plot(dt,globalactivepower, type="l", col="black", ylab="Global Active Power (kilowatts")
dev.off()