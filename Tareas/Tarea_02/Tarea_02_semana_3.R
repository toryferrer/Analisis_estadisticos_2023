#Alumno: Luis Miguel Toribio Ferrer
#Matricula: 2173385
#Fecha: 22/02/2023

#ASIGNACION 02: Uso de restricciones y estadísticas descriptivas 


# Importar datos de trabajo  ----------------------------------------------


#insertar los datos desde excel en formato csv

conjunto <- read.csv("DATOS_01.csv", header= TRUE)
head(conjunto)

#insertarlo desde Datos de URL seguras (https): Dropbox

library(repmis)
conjunto2 <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")
head(conjunto2)

#para esta tarea se utilizara los datos cargados desde excel, los insertados por URL fue para practica personal


# Selección de datos ------------------------------------------------------

# funcion subset para la variable de Altura

# Incluir los datos iguales o menores a la media (objeto en R se llame: H.media)


mean(conjunto$Altura)

H.media <- subset(conjunto, Altura<= mean(conjunto$Altura))

H.media

# Incluir los datos menores a 16.5 m (objeto en R se llame: H.16)

H.16 <- subset(conjunto, Altura< 16.5)
H.16

#funcion subset para la variable de Vecinos

# Incluir los árboles que tengan un número de vecinos iguales o menores a 3 (Objeto en R: Vecinos-3)

Vecinos.3 <- subset(conjunto, Vecinos<= 3)
Vecinos.3

# Incluir los árboles que tengan un número de vecinos mayores a 4 (Objeto en R: Vecinos-4)

vecinos.4 <- subset(conjunto, Vecinos> 4)
vecinos.4

# Aplicar la función subset para la variable Diametro

# Incluir los diámetros menores a la media (objeto en R: DBH-media)

DBH.media <- subset(conjunto, Diametro< mean(conjunto$Diametro))
DBH.media

# Incluir los diámetros mayores a 16 (Objeto en R DBH-16)

DBH.16 <- subset(conjunto, Diametro> 16)
DBH.16

# Aplicar la función subset para la variable Especie

# Incluir la especie Cedro Rojo

Cedro_rojo <- subset(conjunto, Especie=="C")
Cedro_rojo

# Incluir la especie Tsuga heterófila y Douglasia verde

Tsuga_Douglasia <- subset(conjunto, Especie!="C")
Tsuga_Douglasia

# otra forma de hacerlo es mediante la combinacion de dos campos 

Tsuga <- subset(conjunto, Especie== "F")

Douglasia <- subset(conjunto, Especie=="H")

Douglasia_Tsuga <- rbind(Tsuga,Douglasia)

Douglasia_Tsuga

# Determinar cuantas observaciones son menores o iguales a 16.9 cm de Diametro

DiamCrojo_16.9 <- subset(Cedro_rojo, Diametro<= 16.9)
DiamCrojo_16.9

DiamTsu_Doug_16.9 <- subset(Tsuga_Douglasia, Diametro<= 16.9)
DiamTsu_Doug_16.9

#Determinar cuantos observacions son mayores a 18.5 metros de Altura

AltCrojo_18.5 <- subset(Cedro_rojo, Altura>=18.5)
AltCrojo_18.5

AltTsu_Doug_18.5 <- subset(Tsuga_Douglasia, Altura>=18.5)
AltTsu_Doug_18.5

# VIsualizacion de datos --------------------------------------------------

#Con la función hist generar los histogramas para los objetos creados en el apartado anterior

#Altura, H.media y H.16

hist(conjunto$Altura)

hist(H.media$Altura)

hist(H.16$Altura)

#Vecinos, Vecinos-3, Vecinos-4

hist(conjunto$Vecinos)

hist(Vecinos.3$Vecinos)

hist(vecinos.4$Vecinos)

#Diametro, DBH-media, DBH-16

hist(conjunto$Diametro)

hist(DBH.media$Diametro)

hist(DBH.16$Diametro)


# Estadisticas basicas  ---------------------------------------------------

#Determinar la media (mean) de los objetos (variable y respectivos subsets), así como su desviación estándar (sd)

#Altura, H.media y H.16

mean(conjunto$Altura)

sd(conjunto$Altura)

mean(H.media$Altura)

sd(H.media$Altura)

mean(H.16$Altura)

sd(H.16$Altura)

#Vecinos, Vecinos-3, Vecinos-4

mean(conjunto$Vecinos)

sd(conjunto$Vecinos)

mean(Vecinos.3$Vecinos)

sd(Vecinos.3$Vecinos)

mean(vecinos.4$Vecinos)

sd(vecinos.4$Altura)

#Diametro, DBH-media, DBH-16

mean(conjunto$Diametro)

sd(conjunto$Diametro)

mean(DBH.media$Diametro)

sd(DBH.media$Diametro)

mean(DBH.16$Diametro)

mean(DBH.16$Diametro)

#FIN

