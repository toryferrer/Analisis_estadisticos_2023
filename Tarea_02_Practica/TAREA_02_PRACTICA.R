#AlumnO: Luis Miguel Toribio Ferrer
#Fecha: 14/02/2023
#practica del posible tarea 02


# Importar datos de trabajo -----------------------------------------------

conjunto <- read.csv("DATOS_01.csv",
                     header=TRUE)
conjunto

# Seleccion de datos ------------------------------------------------------

mean(conjunto$Altura)

H.media <- subset(conjunto, Altura<= mean(conjunto$Altura))

H.media
