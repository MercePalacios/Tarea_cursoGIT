############## TAREA CURSO GIT ################
################ 12/12/2022 ###################
###############################################

# load packages

library(xlsx)
library(ggplot2)
library(car)


# import data

data <- read.table("clipboard", header=TRUE, sep="\t", na.strings="NA", dec=",", strip.white=TRUE)


# analisis 

ggplot(data, aes (x = year, y = abundance, colour = habitat)) +
             geom_smooth(method = "lm", aes(fill = habitat)) +               
             theme_bw() + scale_fill_manual(values = c("#EE7600", "#00868B")) + scale_colour_manual(values = c("#EE7600", "#00868B"))         
   

# adjust and run a model

lm <- lm(abundance ~ year*habitat, data)

anova(lm)
