#Alumno: Luis_Miguel_Toribio_Ferrer
#Matricula: 2173385
#Fecha:03/02/2022

#Asignación 1: Primer análisis en R

#Parte 2: Problemas

# Problema 01: ------------------------------------------------------------

#Especies 

Pinus <- 3140
Pinus

Mezquite <- 1453
Mezquite

Encinos <- 450 
Encinos

Teka <- 1200
Teka 

Juniperos <- 720
Juniperos


superficie <- c(Pinus,Mezquite, Encinos, Teka, Juniperos)

barplot(superficie)

#Descubra cómo utilizar sort() para ordenar los elementos en la variable superficie, con el fin de organizar elementos en gastos en orden creciente

sort(superficie)

#Descubra cómo utilizar sort() y barplot() para producir un gráfico de barras con barras en orden decreciente


barplot(sort(superficie))

# Opcional: Mostrar los nombres de las variables debajo de cada una de las barras

datos <- c('Encinos','Juniperos', 'Teka','Mezquite','pinus')
hectareas <- c(450,720,1200,1453,3140)

barplot(height=hectareas, names=datos,  
        col=c('red','black','green','blue', 'yellow'),
        xlab="especies",
        ylab="Superficie",
        main="Superficie reforestada",
        ylim= c(0,4000))

#Determine la media de la variable superficie

mean(superficie)


# Problema 02: ------------------------------------------------------------

#Ingresar los datos en una variable llamada germinación

germinacion <- c(4, 1, 6, 2, 4, 2, 4, 2, 4, 6, 3, 5, 3, 2, 5, 4, 0, 5, 4,
                 2, 4, 5, 3, 5, 3, 5, 4, 3, 6, 2)
germinacion

#Determinar la media de germinación de las 30 cajas Petri

mean(germinacion)

#Averigue como determinar la desviasión estándar standar deviation usando la función help (enla modalidad que desee)

sd(germinacion)

# Problema 03: ------------------------------------------------------------

# Ingresar los datos en una variable llamada altura

altura <- c(38, 14, 44, 11, 9, 21, 39, 28, 41, 4, 35, 24, 36, 12,
            20, 31, 24, 25, 10, 21, 11, 36, 37, 20, 26)
altura

# Determinar la media de altura de las plántulas de Prosopis

mean(altura)

#Determinar la desviación estánda de la variable altura

sd(altura)

