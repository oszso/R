library(vcd)
###Asociación entre el tratamiento y niveles de mejora

###Tabla de contingencia
prop.table(table(Arthritis$Treatmen,Arthritis$Improved))
TE<-table(Arthritis$Treatment,Arthritis$Improved)
assoc(TE,color=TRUE,shade=T,main="mosaico")

barplot(TE, main="Tratamiento",col=c("darkblue","darkred"),legend=rownames(TE),beside=TRUE)

mosaicplot(TE, color=TRUE,split=TRUE,shade=TRUE,main="mosaico")

assoc(TE,color=TRUE,shade=T,main="mosaico",col=c("darkblue","darkred"))

chisq.test(TE)
qchisq(0.95,2)
chisq.test(TE)$expected

###Asociación entre el sexo y niveles de mejora
TS<-table(Arthritis$Sex,Arthritis$Improved)
assoc(TE,color=TRUE,shade=T,main="mosaico")

barplot(TS, main="Tratamiento",col=c("darkblue","darkred"),legend=rownames(TS),beside=TRUE)

mosaicplot(TS,color=TRUE,shade=TRUE,main="mosaico")

assoc(TS,color=TRUE,shade=T,main="mosaico",col=c("darkblue","darkred"))
chisq.test(TS)
qchisq(0.95,2)
chisq.test(TE)$expected


