#install.packages('mlbench')
#install.packages('caret')
library(caret)
library(mlbench)
data(BreastCancer,package = "mlbench")
b_canc = BreastCancer[complete.cases(BreastCancer),]
head(b_canc)
set.seed(100)
Train_Ratio <- createDataPartition(b_canc$Class,p=0.72,list=FALSE)
Train_Data <- b_canc[Train_Ratio,]
fit = glm(Class ~ Cell.shape + Bare.nuclei + Cl.thickness + Marg.adhesion, family = "binomial",data = Train_Data)
summary(fit)
plot(fit)
