library(vcd)
###Asociación entre el tratamiento y niveles de mejora

###Tabla de contingencia
prop.table(table(Arthritis$Treatmen,Arthritis$Improved))
TE<-table(Arthritis$Treatment,Arthritis$Improved)
barplot(TE, main="Tratamiento",col=c("darkblue","darkred"),legend=rownames(TE),beside=TRUE)

assoc(TE,color=TRUE,shade=T,main="mosaico")

##Pvalue=0.0014626

mosaicplot(TE, color=TRUE,split=TRUE,shade=TRUE,main="mosaico")

assoc(TE,color=TRUE,shade=T,main="mosaico",col=c("darkblue","darkred"))

chisq.test(TE)
qchisq(0.95,2)
chisq.test(TE)$expected

###Asociación entre el sexo y niveles de mejora
TS<-table(Arthritis$Sex,Arthritis$Improved)
barplot(TS, main="Tratamiento",col=c("darkblue","darkred"),legend=rownames(TS),beside=TRUE)

assoc(TS,color=TRUE,shade=T,main="mosaico")

##Pvalue=.088891
mosaicplot(TS,color=TRUE,shade=TRUE,main="mosaico")

assoc(TS,color=TRUE,shade=T,main="mosaico",col=c("darkblue","darkred"))
chisq.test(TS)
qchisq(0.95,2)
chisq.test(TE)$expected


