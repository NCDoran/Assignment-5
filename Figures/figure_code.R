#Packages
library(readr)
library(vioplot)

#Import data set
siscowet <- read_csv("Data/siscowet.csv")

#Exploratory plot
vioplot(siscowet$age~siscowet$locID+siscowet$sex,
        main="Age Composition of Lake Superior Siscowet Trout by Sex")

#Expository Figure
vioplot(data=siscowet, age~sex+locID,
        main="Age and Sex Composition of Lake Superior Siscowet Lake Trout",
        ylab="Age (years)", xlab="Sampling Locations",
        col=c("palevioletred", "skyblue4"),
        names=c("Blind Sucker","Blind Sucker", "Lake Morais","Lake Morais",
                "Little Lake Harbor", "Little Lake Harbor"))
legend(x=1.2, y=21,legend=c("Female", "Male"), col=c("palevioletred", "skyblue4"), 
       lty=1, lwd=4, cex=0.7, bty="n")
?vioplot
