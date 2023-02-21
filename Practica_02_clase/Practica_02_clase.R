
# PRUEBA DE HIPOTESIS -----------------------------------------------------

vivero <- read.csv("vivero.csv", header=TRUE)
head(vivero)

boxplot(vivero$IE ~ vivero$Tratamiento, col="grey")

Ctrl <-subset (vivero, Tratamiento=="Ctrl")

Fert <- subset(vivero, Tratamiento=="Fert")


#PRUEBA DE LA DISTRIBUCION NORMAL 
shapiro.test(Ctrl$IE)



op <- par(mfrow=c(1,2), cex.axis=.7, cex.lab=.9)
boxplot(vivero$IE ~ vivero$Tratamiento, col="grey", main="A")
barplot(tapply(vivero$IE, list(vivero$Tratamiento), mean ), beside=T, main="B")

#PRUEBA DE NORMALIDAD DE LAS VARIANZAS

var.test(Ctrl$IE, Fert$IE)

#Prueba de T de student 

t.test(Ctrl$IE, Fert$IE, var.equal=T)

t.test(Ctrl$IE, Fert$IE)
