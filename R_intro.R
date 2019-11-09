8 * 6 
2^16
sqrt(2)
abs (-650)
?sqrt
kokalti2= sqrt(2)
kokalti2
ilsaat = 365*24
ls()
c(2,3,5,8,18)
Country = c("Brazil", "China","India", "Switzerland", "USA")
LifeExpectancy = c(74, 76, 65, 83,79) 
Country
LifeExpectancy
Country[1]
LifeExpectancy[3]
seq(0,100,2)
CountryData = data.frame (Country, LifeExpectancy)
CountryData
CountryData$Population = c(199000, 1390000, 1240000, 7997, 318000)
CountryData

Country = c("Australia", "Greece")
 LifeExpectancy = c (82, 81)
 Population = c(23050, 11125)
 NewCountryData = data.frame(Country, LifeExpectancy, Population)
 NewCountryData

 AllCountryData = rbind(CountryData, NewCountryData)
 AllCountryData

getwd()
mydata <- read.csv(file.choose())
WHO = read.csv("WHO.csv")   
str(mydata)
summary(mydata)
WHO_Europe = subset(mydata, Region == "Europe")
str(WHO_Europe)
write.csv(WHO_Europe, "WHO_Europe.csv")
ls ()
rm(WHO_Europe)
ls()


Under15
mydata$Under15
mean(mydata$Under15)
sd(mydata$Under15)
summary(mydata$Under15)

which.min (mydata$Under15)
mydata$Country[124]
which.max(mydata$Under15)
plot(mydata$GNI, mydata$FertilityRate)
Outliers = subset(mydata, GNI> 20000 & FertilityRate>3)
nrow(Outliers)

Outliers[c("Country" , "GNI" , "FertilityRate")]
hist(mydata$CellularSubscribers)
boxplot(mydata$LifeExpectancy ~ mydata$Region)
boxplot(WHO$LifeExpectancy ~ WHO$Region, xlab="", ylab="Life Expectancy", main="Life Expectancy of Countries by Region")

dataset = read.csv('Risk Analysis data')
install.packages("DataExplorer")
install.packages('dplyr')
library(DataExplorer)
create_report(Risk.Analysis.data)
library(dplyr)
dataset = Risk.Analysis.data %>% mutate_if(is.character,as.factor) %>% mutate_all(as.numeric)
create_report(dataset)

