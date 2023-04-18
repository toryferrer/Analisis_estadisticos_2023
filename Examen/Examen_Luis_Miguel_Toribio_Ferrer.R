#examen 
#Alumno: Ing. Luis Miguel Toribio Ferrer
#Matricula: 2173385
#Fecha: 31/03/2023


# conjunto de datos  ------------------------------------------------------

library(repmis)
suelo <- source_data("https://www.dropbox.com/s/3pi3huovq6qce42/obs.csv?dl=1")

suelo$zone <- as.factor(suelo$zone)
is.factor(suelo$zone)

suelo$wrb1 <- as.factor(suelo$wrb1)
is.factor(suelo$wrb1)

# Actividad a Realizar ----------------------------------------------------

# Actividad 1 -------------------------------------------------------------

#¿cual es la tendencia del contenido promedio de arcilla (clay) con respecto a la profundidad?

summary(suelo$Clay1)
summary(suelo$Clay2)
summary(suelo$Clay5)

#RESPUESTA: conforme va incrementado la profundidad del suelo el contenido de arcilla va incrementado, en conclusion tiene una tendencia positiva.


# Actividad 2 -------------------------------------------------------------

#grafica la distribucion del primer perfil Clay1 con la funcion stem_and_leaf.

stem(suelo$Clay1)

#¿los datos de contenido de arcilla siguen una distribucion simetrica o con sesgo?

#RESPUESTA: los datos tiene una distribución con sesgo a la izquierda 


# Actividad 3 -------------------------------------------------------------
#graficar mediante un boxplot para el primer perfil clay1 de arcilla

boxplot(suelo$Clay1)

#¿existe evidencia de outliers?

#RESPUESTA: si existen evidencias

#puede identificar cuales observaciones son mediante una simple restriccion de datos?

which(suelo$Clay1>65)

#RESPUESTA: las observaciones numero 1, 2, y 106.

# Actividad 4 -------------------------------------------------------------

#determine la media de la variable clay1 

mean(suelo$Clay1)

#¿estime si el contenido de arcilla promedio en los suelos tropicales de 30 % es significativa diferente a la media observada en el campo expiremental TCP?

t.test(suelo$Clay1,mu=30)

#RESPUESTA: no es significativa diferente a la media


# Actividad 5 -------------------------------------------------------------

#La primera pregunta del investigador es saber si existe una relación entre el contenido de arcilla en los tres perfiles. De aquí se desprende la siguiente pregunta especifica:

#¿Existe una relación positiva, negativa o para nada relacionados, entre los perfiles superior (Clay 1) e inferior (Clay) con el contenido de Arcilla? 

cor.test(suelo$Clay1, suelo$Clay5)

#RESPUESTA: si existe una relacion positiva 

#¿La correlación es estadísticamente significativa? 

#RESPUESTA: si es estadisticamente significativa 



# Actividad 6 -------------------------------------------------------------

#Después de cada análisis de correlación surge la siguiente pregunta:

#¿Es posible determinar una ecuación significativa para predecir el comportamiento del contenido de arcilla en el perfil inferior Clay5?

#RESPUESTA: si es posible determinar una ecuación

#¿Cuál es la ecuación final para predecir el comportamiento del contenido de arcilla en el perfil más profundo (30-50 cm)? 


plot(suelo$Clay5~suelo$Clay1)
#abline(regresion)

lm(suelo$Clay5~suelo$Clay1)
regresion <- lm(suelo$Clay5~suelo$Clay1)
regresion 

#RESPUESTA: lm(formula = suelo$Clay5 ~ suelo$Clay1)

#¿Son ambos parámetros alfa y beta significativos? 

summary(regresion)

#RESPUESTA: si ambos parametros son significativos 


#¿Cuál es el porcentaje de varianza explicado por el método aplicado?

anova(regresion)

#la Adjust R-squared fue de 0.804 obtenido lo que significa que la ecuacion predice de manera correcta. entonces el porcentaje es de 80.4 %.
# Actividad 7 -------------------------------------------------------------

#Con la base de datos se puede predecir que tan variable es el contenido de arcilla en la capa más profunda entre las cuatro zonas identificadas 


#¿Existe una forma de identificar la variación entre las cuatro zonas que se encuentran en el estudio?

#RESPUESTA: si esxiste la forma de identificar la variación, mediante el analisis de varianza (anova) 

#Realice una inspección visual del contenido de arcilla en el perfil 30-50 cm (Clay5) y las cuatro zonas (zone) presentes en el área de estudio. ¿Existen indicios de que las cuatro zonas son diferentes en cuanto al contenido de arcilla en el perfil de 30 a 50 cm.?

boxplot(suelo$Clay5~suelo$zone)

#RESPUESTA: mediante la inspeccion visual de los boxplot, se encontró que si existe diferencias en los contenidos de arcillas en las cuatros zonas 


#¿observa alguna diferencia en los datos datos en las diferentes zonas?

by(suelo$Clay5, suelo$zone, summary)

#RESPUESTA: la tendencia de la media, mediana y 3rd quartil y valores maximo va disminuyendo conforme va cambiando de zona.


# Actividad 8 -------------------------------------------------------------

# Determine mediante una análisis de varianza con las variable contenido de arcilla en el perfil 30-50 y el factor o tratamiento zonas.

anova <- aov(suelo$Clay5~suelo$zone)
summary(anova)

#¿Existen diferencias significativas entre el contenido de arcilla del perfil 30-50 cm y las zonas del estudio?
  
#RESPUESTA: de acuerdo con el analisis de varianza (ANOVA) si existe diferencia significativa en el contenido de arcilla del perfil 30-50 com y la zona del estudio


#En caso de existir diferencias ¿Cuáles zonas son diferentes estadísticamente entre si en el contenido de arcilla en el perfil de 30-50 cm? 

TukeyHSD(anova)

#RESPUESTA: con base a la prueba de tukey, la zona 1 es diferente estadisticamente con la zona 3 y 4-, la zona 2 es estadisticamente difirente con la zona 3 y 4 y la zona 3 es estadisticamente diferente con la 4.