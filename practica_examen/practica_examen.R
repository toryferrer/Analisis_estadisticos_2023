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











