library(dplyr)
library(ggplot2)
library(caret)
library(tidyverse)
library(dslabs)

data(iris)
head(iris)

help('knn3')
help('confusionMatrix')
help("ggplot")
Train<- slice(iris,1:100)
Test<- slice(iris,101:150)

Tmodel<- knn3(Species~.,Train)
Test_m<-predict(Tmodel,Test,type = "class")

confusionMatrix(Test_m,Test$Species)
