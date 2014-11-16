source("function.r")

## Fitting linear model using diamonds dataset with price as response and carat, depth and color as predictor variable
lm.model<-lm(price~carat+color+depth, data=diamonds)
diagPlts<-diagPlot(lm.model)

lbry<-c("grid", "gridExtra")
lapply(lbry, require, character.only=TRUE, warn.conflicts = FALSE, quietly = TRUE)

