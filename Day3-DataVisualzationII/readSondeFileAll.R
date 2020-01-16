## Reading and plotting file 2020/01/13
DATA <- read.csv("SondeData/BLOS_MSSM_jterm_20200113.csv")

png('temperature-20200113.png')
plot(DATA[['Temp.C']],-DATA[['Depth.m']],
     xlab='Temperature (deg C)',ylab='Depth (m)',
     xlim=c(5,6),ylim=c(-10,0),
     type="o",col="turquoise")
dev.off()

#----------------------
## Reading and plotting file 2020/01/14
DATA1 <- read.csv("SondeData/BLOS_MSSM_jterm_20200114.csv")

# Let's make a figure and save it
png('temperature-20200114.png')
plot(DATA1[['Temp.C']],-DATA1[['Depth.m']],
     xlab='Temperature (deg C)',ylab='Depth (m)',
     xlim=c(5,6),ylim=c(-10,0),
     type="o",col="turquoise")
dev.off()

#----------------------
## Reading and plotting file 2020/01/15
DATA2 <- read.csv("SondeData/BLOS_MSSM_jterm_20200115.csv")

# Let's make a figure and save it
png('temperature-20200115.png')
plot(DATA2[['Temp.C']],-DATA2[['Depth.m']],
     xlab='Temperature (deg C)',ylab='Depth (m)',
     xlim=c(5,6),ylim=c(-10,0),
     type="o",col="turquoise")
dev.off()


