
#---------------------- PROJECT1: MASHROOMS ANALYSIS --------------------#
                
                #-------------- 09\27\2024 --------------#

                      #----- Sumeyran Fabian -----#

#data import

mashrooms <- read.csv("C:\\Users\\psksu\\OneDrive\\Desktop\\R_dosyalar\\mushrooms.csv")

# data observation

str(mashrooms)

#column selection

mash_studied <- mashrooms[c(1,6)]

#statistical analysis

table(mash_studied)

#percentage analysis

prop.table(table(mash_studied))*100

#data visualization

library(ggplot2) #required library

table(mash_studied$type) #generate numeric values based on type

mash_studied$count <- ifelse(mash_studied$type== "edible", 4208, 3916) #generate count column

#linening up the odors

mash_studied$odor<- factor(mash_studied$odor, levels = c("none","almond", "anise", "creosote", "fishy", "foul", "musty","pungent", "spicy" ))

#linening up the types

mash_studied$type <- factor(mash_studied$type, levels= c("poisonous", "edible"))


#generate plot

ggplot(mash_studied, aes(x= type, y= count)) +
  geom_bar(stat = "identity", position = "stack", aes(fill= odor ))+
  scale_fill_manual(values= c("almond"= "red", "anise"= "orange", "none"= "#8a200a", "creosote"= "#032158", 
                              "fishy"= "#103477", "foul"= "#25427a", "musty"= "#3a5280", "pungent"= "#4c5f82","spicy"= "#636e83" ))+
  labs(title = "Odor Distributing According to Mashroom Species", 
     x = "MASHROOM TYPE",                                
     y = "COUNT")
