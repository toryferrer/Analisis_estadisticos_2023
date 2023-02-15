#Alumno: Luis Miguel Toribio Ferrer
#Fecha: 14/02/2023
#practica del posible tarea 02


# Importar datos de trabajo -----------------------------------------------

conjunto <- read.csv("DATOS_01.csv", header=TRUE)
conjunto

# Seleccion de datos ------------------------------------------------------

#Incluir los datos iguales o menores a la media (objeto en R se llame: H.media)

mean(conjunto$Altura)

H.media <- subset(conjunto, Altura<= mean(conjunto$Altura))

H.media

#Incluir los datos menores a 16.5 m (objeto en R se llame: H.16)

H.16 <- subset(conjunto, Altura< 16.5)
H.16

#Aplicar la función subset para la variable Vecinos

#Incluir los árboles que tengan un número de vecinos iguales o menores a 3 (Objeto en R: Vecinos-3)

Vecinos.3 <- subset(conjunto, Vecinos<= 3)
Vecinos.3

#Incluir los árboles que tengan un número de vecinos mayores a 4 (Objeto en R: Vecinos-4)

vecinos.4 <- subset(conjunto, Vecinos> 4)
vecinos.4

#Aplicar la función subset para la variable Diametro
#Incluir los diámetros menores a la media (objeto en R: DBH-media)

DBH.media <- subset(conjunto, Diametro< mean(conjunto$Diametro))
DBH.media

#Incluir los diámetros mayores a 16 (Objeto en R DBH-16)


DBH.16 <- subset(conjunto, Diametro> 16)
DBH.16

#Aplicar la función subset para la variable Especie
#Incluir la especie Cedro Rojo




