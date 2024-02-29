install.packages('meta')
install.packages("metafor")
install.packages('rmeta')

library(metafor)
library(meta)
library(rmeta)
library(readr)

library(readxl)

VDR <- read_excel("Desktop/Dane_meta-2.xlsx")
View(VDR)

ApaI <- VDR[c(1:5),]
BsmI <- VDR[c(6:12),]
TaqI <- VDR[c(13:17),]
FokI <- VDR[c(20:22),]

#Tree plot

y_ApaI = metabin(data = ApaI, A, AC, B, BD,
                 sm = "OR")
forest(y_ApaI, leftcols = c("studlab","effect"), rightcols = c("ci","w.random"),
       col.square = "red", col.diamond = "blue", print.tau2 = T, print.Q = T,
       print.I2 = T)

y_BsmI = metabin(data = BsmI, A, AC, B, BD,
                 sm = "OR")
forest(y_BsmI, leftcols = c("studlab","effect"), rightcols = c("ci","w.random"),
       col.square = "red", col.diamond = "blue", print.tau2 = T, print.Q = T,
       print.I2 = T)

y_TaqI = metabin(data = TaqI, A, AC, B, BD,
                 sm = "OR")
forest(y_TaqI, leftcols = c("studlab","effect"), rightcols = c("ci","w.random"),
       col.square = "red", col.diamond = "blue", print.tau2 = T, print.Q = T,
       print.I2 = T)

y_FokI = metabin(data = FokI, A, AC, B, BD,
                 sm = "OR")
forest(y_FokI, leftcols = c("studlab","effect"), rightcols = c("ci","w.random"),
       col.square = "red", col.diamond = "blue", print.tau2 = T, print.Q = T,
       print.I2 = T)


#_______________________________________________________________________________


H_ApaI <- meta.MH(AC, BD, A, B, data=ApaI,
                  names=Study)
summary(H_ApaI)

H_BsmI <- meta.MH(AC, BD, A, B, data=BsmI,
                  names=Study)
summary(H_BsmI)


H_TaqI <- meta.MH(AC, BD, A, B, data=TaqI,
                  names=Study)
summary(H_TaqI)

H_FokI <- meta.MH(AC, BD, A, B, data=FokI,
                  names=Study)
summary(H_FokI)