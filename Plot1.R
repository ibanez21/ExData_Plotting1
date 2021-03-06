hpc <- read.csv("./household_power_consumption.txt", stringsAsFactors=FALSE, header=TRUE, sep=";")
hpc$Date <- as.Date(hpc$Date, format="%d/%m/%Y")
subset_hpc <- subset(hpc, Date >= "2007-02-01" & Date <= "2007-02-02",)
GAP <- as.numeric(subset_hpc$Global_active_power)

png("plot1.png", height=480, width=480)
hist(GAP, col="red", main = "Global Active Power" ,xlab="Global Active Power (kilowatts")
dev.off()