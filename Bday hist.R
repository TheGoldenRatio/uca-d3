library("ggplot2")
library("scales")

dates <- read.csv("uca-d3/bday.csv", sep=",", header=T)

freqs <- aggregate(dates$Date, by=list(dates$Date), FUN=length)
freqs$names <- as.Date(freqs$Group.1,"%Y-%m-%d")

c <- ggplot(freqs, aes(x=names, y=x)) 
c <- c+ geom_bar(stat='identity')+ ylab("Frequency") + 
    xlab("Year and Month")+ 
    ggtitle("UCA 2021 Birthday Distributions")+ 
    theme(plot.title = element_text(hjust = 0.5))

c



