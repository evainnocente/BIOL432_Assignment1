#R script 1

##1 Creating a vector of 100 species randomly selected from a
#vector of 5 species names

speciesnames<-c("Orange cat","Yellow dog",
                "Red bird","Blue fish","Green moose")
#vector of 100 organisms
organism<-sample(speciesnames,100,replace=T)
organism

##2. Creating a vector of 100 values for limb width, 
#randomly selected from a normal distribution
Limb_width<-rnorm(100, mean=30,sd=5)
Limb_width

##3. Creating a vector of 100 values for limb length,
#randomly selected from a normal distribution
Limb_length<-rnorm(100,mean=100,sd=30)
Limb_length

##4. Creating a vector of 100 values for Observer, 
#randomly selected from a vector of each 3 names

#vector of names
names<-c("Hammy","Floss","Bartholomew")

#vector of 100 names
observer<-sample(names,100,replace=T)
observer

##5. Creating the data frame of all the vectors
measurements<-data.frame(organism,Limb_width,Limb_length,observer)
measurements

#Export to csv

write.csv(measurements, 
          "C:/Users/evain/OneDrive - Queen's University/university/BIOL 432/BIOL432_Assignment1\\measurements.csv", row.names=FALSE)

