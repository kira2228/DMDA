library(datasets)
if(!require("pacman"))install.packages("pacman")
pacman::p_load(pacman,caret,lars,tidyverse)
USJudgeRatings
head(USJudgeRatings)
data <- USJudgeRatings
x <- as.matrix(data[,-12])
y <- data[,12]
reg1 <- lm(y~x)
reg1 <- lm(RTEN~CONT+INTG+DMNR+DILG+CFMG+DECI+PREP+FAMI+ORAL+WRIT+PHYS,data= USJudgeRatings)
reg1
summary(reg1)
plot(reg1)
