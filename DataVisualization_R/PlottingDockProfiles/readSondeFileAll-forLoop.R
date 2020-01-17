fileNameKeys = c("20200113","20200114","20200115")

for (key in fileNameKeys){
  fileName = paste("SondeData/BLOS_MSSM_jterm_",key,".csv",sep="")
  figName = paste("temperature-",key,'.png',sep="")
  
  DATA <- read.csv(fileName)
  png(figName)
  plot(DATA[['Temp.C']],-DATA[['Depth.m']],
       xlab='Temperature (deg C)',ylab='Depth (m)',
       xlim=c(5,6),ylim=c(-10,0),
       type="o",pch="15",col="turquoise")
  dev.off()
  
}