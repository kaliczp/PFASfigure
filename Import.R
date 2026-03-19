library(readxl)
CreekComponentNames <- as.character(read_excel("PFAS calculation table.xlsx", col_names = FALSE)[2, seq(66,289,5)])
CreekValues <- as.data.frame(read_excel("PFAS calculation table.xlsx", col_names = FALSE, skip = 20)[1:11,c(1,seq(68,289,5))])
