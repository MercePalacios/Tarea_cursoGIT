############## TAREA CURSO GIT ################
################ 12/12/2022 ###################
###############################################

# load packages

library(xlsx)
library(ggplot2)
library(car)


# import data

data <- read.table("clipboard", header=TRUE, sep="\t", na.strings="NA", dec=",", strip.white=TRUE)

