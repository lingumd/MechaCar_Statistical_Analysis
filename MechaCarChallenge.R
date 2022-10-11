library(dplyr)

#Deliverable 1
#Read in the MechaCar_mpg.csv file
mechacar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#Create linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar)

#Summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar))

#Deliverable 2
#Read in the Suspension_Coil.csv file
suspcoil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#Summarize data
total_summary <- suspcoil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

#Create a lot_summary dataframe
lot_summary <- suspcoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

#Deliverable 3
#T-test
t.test(suspcoil$PSI,mu=1500)

#t-test for Lot 1
t.test(subset(suspcoil,Manufacturing_Lot=="Lot1")$PSI,mu=1500)

#t-test for Lot 2
t.test(subset(suspcoil,Manufacturing_Lot=="Lot2")$PSI,mu=1500)

#t-test for Lot 3
t.test(subset(suspcoil,Manufacturing_Lot=="Lot3")$PSI,mu=1500)