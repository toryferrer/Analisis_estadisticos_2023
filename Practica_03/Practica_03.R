#alumno:LUIs MIGUEL TORIBIO FERRER
#FECHA:15/02/2022
#PRINCIPIOS ESTADISTICOS 


# cargar datos ------------------------------------------------------------

Geiser <- read.csv("erupciones_1.csv", header=TRUE)

Geiser

summary(Geiser)

#Determinar media de las variables eruptions y waiting

mean(Geiser$eruptions) 

mean(Geiser$waiting)

#Determinar desviaciòn estandar de las variable eruptions y waiting

sd(Geiser$eruptions)

sd(Geiser$waiting)

#Prueba de normalidad de Shapiro-Wilk variable eruptions

shapiro.test(Geiser$eruptions)

#d)Para conocer la correlacion entre las variales eruption y waiting
#se hace una prueba de correlación.

cor.test(Geiser$eruptions, Geiser$waiting)

boxplot(Geiser$eruptions, Geiser$waiting)
