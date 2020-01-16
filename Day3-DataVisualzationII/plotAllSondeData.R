## Reading files
DATA <- read.csv("SondeData/BLOS_MSSM_jterm_20200113.csv")
DATA1 <- read.csv("SondeData/BLOS_MSSM_jterm_20200114.csv")
DATA2 <- read.csv("SondeData/BLOS_MSSM_jterm_20200115.csv")

## plotting
png('temperature-all.png')
plot(DATA[['Temp.C']],-DATA[['Depth.m']],
     xlab='Temperature (deg C)',ylab='Depth (m)',
     xlim=c(5,6),ylim=c(-10,0),
     type="o",pch=15,col="turquoise")
lines(DATA1[['Temp.C']],-DATA1[['Depth.m']],
      xlab='Temperature (deg C)',ylab='Depth (m)',
      xlim=c(5,6),ylim=c(-10,0),
      type="o",pch=16,col="red")
lines(DATA2[['Temp.C']],-DATA2[['Depth.m']],
     xlab='Temperature (deg C)',ylab='Depth (m)',
     xlim=c(5,6),ylim=c(-10,0),
     type="o",pch=17,col="black")
legend(5,-8,legend=c("01/13/2020","01/14/2020","01/15/2020"),
       col=c("turquoise", "red","black"),pch=c(15,16,17))
dev.off()
