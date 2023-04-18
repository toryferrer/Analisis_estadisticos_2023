# Tarea 05: Asignacion 5: Correlacion 
# Alumno. Luis Miguel Toribio Ferrer 
#Fecha: 02/03/2023


# Ejercicio 01 ------------------------------------------------------------

#Abundancia de las efímeras de un arroyo y la velocidad de la corriente de un arroyo.

Speed <- c(2,3, 5, 9, 14, 24, 29, 34)
abundance <- c(6, 3, 5, 23, 16, 12, 48, 43)

emiferas <- data.frame(Speed, abundance)

plot(emiferas, pch =20, xlab=" variable independiente", ylab= "varable dependiente")

#Contestar las siguientes interrogantes: + ¿Es estadísticamente significativa la correlación?

cor.test(emiferas$Speed, emiferas$abundance)

# H1. Existe una correlación positiva entre la velocidad de los arroyos y la abundancia de efímeras (Ecdyonurus dispar)



# Ejercicio 2 -------------------------------------------------------------

datos_suelos <- read.csv("suelo.csv")
head(datos_suelos)

datoscolumnas <- subset(datos_suelos[ ,7:15])
# Realizar un análisis de correlación para las variables y reportar en un cuadro los valores de coeficiente de correlación y su valor de significancia (p-value):

cor.test(datos_suelos$pH, datos_suelos$N)
cor.test(datos_suelos$pH, datos_suelos$Dens)
cor.test(datos_suelos$pH, datos_suelos$P)
cor.test(datos_suelos$pH, datos_suelos$Ca)
cor.test(datos_suelos$pH, datos_suelos$Mg)
cor.test(datos_suelos$pH, datos_suelos$K)
cor.test(datos_suelos$pH, datos_suelos$Na)
cor.test(datos_suelos$pH, datos_suelos$Conduc)
conjunto <- c("PH-N","pH-Dens", "pH-P","pH-Ca","pH-Mg","pH-K","pH-Na", "pH-conduc")
corre <- c(0.6366, -0.5890, 0.5910, 0.8086, -0.3957, 0.5795, -0.6932, -0.7648)
pvalue <- c(1.149e-06, 1.062e-05, 9.74e-06, 3.614e-12, 0.005361, 1.585e-05, 4.724e-08,2.484e-10)

cuadro_datos <- data.frame(conjunto, corre, pvalue)

cuadro_datos

library(corrplot)
library(psych)
M <- cor(datoscolumnas)

corrplot(M, type = "upper", title = "correlacion de suelos", addCoef.col = "black", tl.srt = 35)
