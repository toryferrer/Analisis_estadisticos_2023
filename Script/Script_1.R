#Alumno: Luis Miguel Toribio Ferrer
#Fecha: 09/02/2022
#sesion01: Estadisticas descriptivas


# primera sesion  ---------------------------------------------------------

dbh <- 15
h <- 8

#multiplicaciones 

dbh*h

dbh^2

log(dbh)

dbh <- c(12, 8, 7, 5, 11, 13, 16, 21, 8, 16)


dbh*h

h <- c(5, 3, 2.5, 2, 4.7, 5.8, 7, 11, 2.4, 7.2)

dbh*h

# Graficas ----------------------------------------------------------------


#boxplot 

boxplot(dbh)

boxplot(h)

plot(dbh, h)

hist(dbh)


set.seed(13)
obs.50 <- rnorm(50, mean =3)
obs.50
hist(obs.50)

set.seed(13)
if.50 <- runif(50, min=10, max=40)
hist(if.50)



if.100 <- runif(100, min=10, max=40)
hist(if.100)


if.500 <- runif(500, min=10, max=40)
hist(if.500)

if.1000 <- runif(1000, min=10, max=40)
hist(if.1000)

stem(if.50)
hist(if.50)


# Restricciones -----------------------------------------------------------

#Trabajar con datos del objeto if. 50

mean(if.50)
fivenum(if.50)
boxplot(if.50)

#igual a ==
#diferente a !=
#igual o mayor >=
#igual o menor <=
#mayor que >
#menor que <

if.50 <= median(if.50)

#subset es igual a un subconjunto de datos

dbh.50 <- subset(if.50, if.50<= median(if.50))

dbh.up50 <- subset(if.50, if.50 >= median(if.50))

dbh.up30 <- subset(if.50, if.50> 30)
dbh.up30

mean(dbh.up30)
sd(dbh.up30)

# Importar datos ----------------------------------------------------------

#funcion read.csv


fert <- read.csv("vivero.csv", header= TRUE)

#ingresarlos como factor

#direccion de los ejes de la graficas =las

fert$Tratamiento <- as.factor(fert$Tratamiento)


boxplot(fert$IE ~ fert$Tratamiento,
        xlab= "Tratamientos",
        ylab= "Indice de Esbeltez",
        col= "red",
        main= "vivero bosque escuela",
        las= 1,
        ylim= c(0.4, 1.4))
