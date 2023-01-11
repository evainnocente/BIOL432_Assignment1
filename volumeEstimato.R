##1. Reading the csv

read.csv("measurements.csv")

##2. Estimating and creating a column of limb volume using dplyr
#equation for volume

#load dplyr
install.packages("dplyr")
library(dplyr)

#check data
head(measurements)

#adding volume column. I am using the equation for volume
#of a cylinder (pir^2h) to crudely measure limb volume

measurements2<-measurements%>%
  mutate(Volume=0.5*Limb_width^2*Limb_length*pi)

#check
head(measurements2)

#overwriting original measurements.csv
write.csv(measurements2, 
"C:/Users/evain/OneDrive - Queen's University/university/BIOL 432/BIOL432_Assignment1\\measurements.csv", row.names=FALSE)





