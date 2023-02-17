#Packages
library(readr)
library(vioplot)

#Import data set
siscowet <- read_csv("Data/siscowet.csv")

#Exploratory plot
#This is the vioplots package I told you about, I pretty much just copied
#And pasted the code from the blue crab violin plots I made earlier this week
vioplot(siscowet$age~siscowet$locID+siscowet$sex,
        main="Age Composition of Siscowet Lake Trout")

#Expository Figure
vioplot(data=siscowet, age~sex+locID,
        main="Age Composition of Siscowet Lake Trout",
        ylab="Age (years)", xlab="Sampling Locations",
        col=c("palevioletred", "skyblue4"),
        names=c("Blind Sucker"," ", "Grand Marais"," ",
                "Little Lake Harbor", " "), cex.names= 1.4)
legend(x=1.2, y=21,legend=c("Female", "Male"), col=c("palevioletred", "skyblue4"), 
       lty=1, lwd=8, cex=0.7, bty="n")

