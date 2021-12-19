library(tid)
#deliverable one
mechampg <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,mechampg) #create linear model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,mechampg))


#deliverable two
coils <- read.csv(file='Suspension_coil.csv', check.names = F,stringsAsFactors = F)
total_summary <- coils %>% summarize(PSI_Mean=mean(PSI),
                                     PSI_Median=median(PSI),
                                     PSI_Var=var(PSI),
                                     PSI_Std_Dev=sd(PSI),
                                          .groups = 'keep') 
total_summary
lot_summary <- coils %>% group_by(Manufacturing_Lot) %>% summarize(PSI_Mean=mean(PSI),
                                                                   PSI_Median=median(PSI),
                                                                   PSI_Var=var(PSI),
                                                                   PSI_Std_Dev=sd(PSI),
                                                                   .groups = 'keep') 
lot_summary

#deliverable three
t.test(coils$PSI,mu=1500)

mlot1 <- subset(coils,Manufacturing_Lot=="Lot1")
t.test(mlot1$PSI,mu=1500)
mlot2 <- subset(coils,Manufacturing_Lot=="Lot2")
t.test(mlot2$PSI,mu=1500)
mlot3 <- subset(coils,Manufacturing_Lot=="Lot3")
t.test(mlot3$PSI,mu=1500)