DATA <- read.csv("SondeData/BLOS_MSSM_jterm_20200115.csv")

# Let's make a figure and save it
png('temperature-20200115.png')
plot(DATA[['Temp.C']],-DATA[['Depth.m']],
     xlab='Temperature (deg C)',ylab='Depth (m)',
     xlim=c(5,6),ylim=c(-10,0),
     type="o",pch="15",col="turquoise")
dev.off()