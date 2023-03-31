#practica examen 
#luis 
#este


# laboratorio 1 -----------------------------------------------------------

#primer contacto con R 

#GASTOS TOTALES 

300+240+1527+400+1500+1833

celular <- 300
celular

transporte <- 240
transporte

comestibles <- 1527
comestibles

gimnasio <- 400
gimnasio

alquiler <- 1500
alquiler

otros <- 1833
otros 

gastos_total <- c(celular+transporte+comestibles+gimnasio+alquiler+ otros)
gastos_total

gastos_5_meses <- (gastos_total*5)
gastos_5_meses

gastos_10_meses <- (gastos_5_meses*2)
gastos_10_meses

gastos <- c(celular, transporte, comestibles, gimnasio, alquiler, otros)

gasto <- sort(gastos)

barplot(gasto, names.arg = c("celular", "transporte", "comestibles", "gimnasio", "alquiler", "otros"))


# laboratorio 2 -----------------------------------------------------------

getwd()

trees <- read.csv("DBH_1.CSV", header = TRUE)
head(trees)

#datos link 

prof_url <-"http://www.profepa.gob.mx/innovaportal/file/7635/1/accionesInspeccionfoanp.csv"
profepa <- read.csv(prof_url, encoding = "latin1")
head(profepa)

library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

file <- source_data("https://raw.githubusercontent.com/mgtagle/202_Analisis_Estadistico_2020/master/cuadro1.csv")

#seleccion mediante restriccciones 

sum(trees$dbh<10)

#cuales son los individuos que son inferiores al diametro (dbh<10 cm)

which(trees$dbh<10)

#excluir los diametros que se encuentra en la parcela 2

trees.13 <- trees[!(trees$parcela=="2"),]

# laboratorio 4 -----------------------------------------------------------

inventario <- source_data("https://raw.githubusercontent.com/mgtagle/PrincipiosEstadistica2021/main/cuadro1.csv")

#estructura de las columna de los datos
str(inventario)
#muestra las dimensiones de los datos
dim(inventario)
#muestra las primeras n filas
head(inventario, n=8)
#muestra las ultimas n filas
tail(inventario, n=3)
#nombre de las columnas
names(inventario)
#igual los nombres de las columnas 
colnames(inventario)
#resumen de los estadisticos de las variables presentes en un inventario 
summary(inventario)

#resumen basico de las primeras 3 a 5 columnas
summary(inventario[,3:5])

#nombre de las primeras cincos columnas
names(inventario[,1:5])

is.factor(inventario$Posicion)

inventario$Posicion <- factor(inventario$Posicion)
is.factor(inventario$Posicion)

summary(inventario[,3:5])

freq_position <-table(inventario$Posicion)
freq_position


#frecuencia relativa 

prop_position <- freq_position/sum(freq_position)
prop_position

perc_position <- 100*prop_position
perc_position
