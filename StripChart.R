## Component names as factor
CreekComponetNamesFactor <- factor(rep(CreekComponentNames, each = 2), levels = CreekComponentNames)
## Creek1
Creek1Components <- data.frame(Component = CreekComponetNamesFactor,
                               Value = as.numeric(as.matrix(CreekValues[1:2,-1]))
                               )

par(las = 2, mar = c(7, 4.1, 0.1, 0.1))
stripchart(Value ~ Component, Creek1Components,pch=1,vertical=T)


## All Creeks
AllCreeks <-  cbind(CName = "Creek1", Creek1Components)
for(CreekNumber in 2:6) {
    ActualCreek <- data.frame(Component = CreekComponetNamesFactor,
                              Value = as.numeric(as.matrix(CreekValues[CreekNumber:(CreekNumber +1),-1]))
                              )
    AllCreeks <-  rbind(AllCreeks, cbind(CName = paste0("Creek", CreekNumber),
                                         ActualCreek))
}
