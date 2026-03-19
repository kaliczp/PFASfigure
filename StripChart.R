## Creek1
Creek1Components <- data.frame(Component = factor(rep(CreekComponentNames, each = 2), levels = CreekComponentNames),
                               Value = as.numeric(as.matrix(CreekValues[1:2,-1]))                               )

par(las = 2, mar = c(7, 4.1, 0.1, 0.1))
stripchart(Value ~ Component, Creek1Components,pch=1,vertical=T)
