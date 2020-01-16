## This is a script to read a EXO1 Sonde data file into R 
## and plot a temperature profile

DATA <- read.csv("SondeData/BLOS_MSSM_jterm_20200113.csv")

# type in your console: summary(DATA)
# check what the column names are for indexing:
# want to plot the "Depth.m" and "Temp.C" columns

plot(DATA[['Temp.C']],-DATA[['Depth.m']])

# let's make the plot look prettier

# add x and y labels
plot(DATA[['Temp.C']],-DATA[['Depth.m']],
     xlab='Temperature (deg C)',ylab='Depth (m)')

# change the limits of the axes
plot(DATA[['Temp.C']],-DATA[['Depth.m']],
     xlab='Temperature (deg C)',ylab='Depth (m)',
     xlim=c(5,6),ylim=c(-10,0))


# change the plot type i.e. to have a line as well as dots
plot(DATA[['Temp.C']],-DATA[['Depth.m']],
     xlab='Temperature (deg C)',ylab='Depth (m)',
     xlim=c(5,6),ylim=c(-10,0),
     type="o",pch="15")

# change the color
plot(DATA[['Temp.C']],-DATA[['Depth.m']],
     xlab='Temperature (deg C)',ylab='Depth (m)',
     xlim=c(5,6),ylim=c(-10,0),
     type="o",pch="15",col="turquoise")

# Let's save our figure:
png('temperature-20200113.png')
plot(DATA[['Temp.C']],-DATA[['Depth.m']],
     xlab='Temperature (deg C)',ylab='Depth (m)',
     xlim=c(5,6),ylim=c(-10,0),
     type="o",pch="15",col="turquoise")
dev.off()