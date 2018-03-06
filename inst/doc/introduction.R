## ---- warning=FALSE------------------------------------------------------
BinomFunc = function(theta, b) {dbinom(b, 20, prob = 1 / (1 + exp(- theta)), log = TRUE)}
BinomData <- scan(url("http://www.stat.umn.edu/geyer/3701/data/q1p7b.txt"))
head(BinomData,3)
GrowthData = read.csv("http://www.stat.umn.edu/geyer/3701/data/growth.csv")
GrowthData[1:3, 1:6]
b = load(url("http://www.stat.umn.edu/geyer/3701/data/q2p3.rda"))
MatrixData = a
head(MatrixData,3)
WeightedData = read.table(url("http://www.stat.umn.edu/geyer/3701/data/q1p4.txt"), header=TRUE)
head(WeightedData,3)
library(ggplot2)
library(dplyr)

## ---- warning=FALSE------------------------------------------------------
head(choosecol(GrowthData, "HT10"), 3)
head(choosecol(GrowthData, "HT10.5"), 3)

## ---- warning=FALSE------------------------------------------------------
ggwrapper(GrowthData, GrowthData[,1], GrowthData[,15])

## ------------------------------------------------------------------------
loglikelihood(BinomData,BinomFunc,c(-100,100))

## ------------------------------------------------------------------------
myapply(MatrixData, 2, mean)

## ------------------------------------------------------------------------
standardCols(MatrixData)

## ------------------------------------------------------------------------
weighted(WeightedData)

## ---- error=TRUE---------------------------------------------------------
try(weightedGIEMO(list(x=rnorm(10), p=c(1:10))))
message(geterrmessage())
weightedGIEMO(WeightedData)

