#Looking at fertility rates and GDP growth rates of the 6 countries most involved in WWII and 3 developing countries
#Years: 1960-2015

setwd("/home/lidens/Documents/dataIncubator/DataIncubatorDataChallenge/")

#Loading in the datasets
FranceFR <- read.delim("France/FertilityRate.dat", sep="", header= TRUE)
FranceGDPGrowth <- read.delim("France/GDPGrowth.dat", sep="", header= TRUE)

GermanyFR <- read.delim("Germany/FertilityRate.dat", sep="", header= TRUE)
GermanyGDPGrowth <- read.delim("Germany/GDPGrowth.dat", sep="", header= TRUE)

ItalyFR <- read.delim("Italy/FertilityRate.dat", sep="", header= TRUE)
ItalyGDPGrowth <- read.delim("Italy/GDPGrowth.dat", sep="", header= TRUE)

JapanFR <- read.delim("Japan/FertilityRate.dat", sep="", header= TRUE)
JapanGDPGrowth <- read.delim("Japan/GDPGrowth.dat", sep="", header= TRUE)

UKFR <- read.delim("UK/FertilityRate.dat", sep="", header= TRUE)
UKGDPGrowth <- read.delim("UK/GDPGrowth.dat", sep="", header= TRUE)

USFR <- read.delim("US/FertilityRate.dat", sep="", header= TRUE)
USGDPGrowth <- read.delim("US/GDPGrowth.dat", sep="", header= TRUE)

IndiaFR <- read.delim("India/FertilityRate.dat", sep="", header= TRUE)
IndiaGDPGrowth <- read.delim("India/GDPGrowth.dat", sep="", header= TRUE)

IndonesiaFR <- read.delim("Indonesia/FertilityRate.dat", sep="", header= TRUE)
IndonesiaGDPGrowth <- read.delim("Indonesia/GDPGrowth.dat", sep="", header= TRUE)

NigeriaFR <- read.delim("Nigeria/FertilityRate.dat", sep="", header= TRUE)
NigeriaGDPGrowth <- read.delim("Nigeria/GDPGrowth.dat", sep="", header= TRUE)

PakistanFR <- read.delim("Pakistan/FertilityRate.dat", sep="", header= TRUE)
PakistanGDPGrowth <- read.delim("Pakistan/GDPGrowth.dat", sep="", header= TRUE)

#plot fertility rate vs year for all 9 countries 
plot(FranceFR$Year, FranceFR$Value, type= "l", xlab="Year", ylab="Fertility Rate (births per woman)",
    xlim=c(1960,2015), ylim=c(1.0,7.0), col="red")
lines(GermanyFR$Year, GermanyFR$Value, col="blue")
lines(ItalyFR$Year, ItalyFR$Value, col="green")
lines(JapanFR$Year, JapanFR$Value, col="black")
lines(UKFR$Year, UKFR$Value, col="purple")
lines(USFR$Year, USFR$Value, col="brown")
lines(IndonesiaFR$Year, IndonesiaFR$Value, col="orange")
lines(NigeriaFR$Year, NigeriaFR$Value, col="gray")
lines(PakistanFR$Year, PakistanFR$Value, col="cyan")
par(xpd=TRUE)
legend("top", inset=c(0.0,-0.115), c("France", "Germany", "Italy", "Japan", "UK", "US", "Indonesia", "Nigeria", "Pakistan"), 
      lwd=c(2.0,2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0),
      col=c("red","blue", "green", "black","purple", "brown", "orange", "gray", "cyan"), 
      cex=0.5, horiz=TRUE)

#plot GDP growth rate vs year
#only comparing Japan and Pakistan for now to see general trends
plot(JapanGDPGrowth$Year, JapanGDPGrowth$Percentage, type= "l", xlab="Year", ylab="GDP Growth Rate (%)",
     xlim=c(1960,2015), ylim=c(-5,15), col="red")
lines(PakistanGDPGrowth$Year, PakistanGDPGrowth$Percentage, col="blue")
legend("topright", c("Japan", "Pakistan"), lwd=c(2.0,2.0),col=c("red","blue"), 
       cex=0.75, horiz=TRUE)
