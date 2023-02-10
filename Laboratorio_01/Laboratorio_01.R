#Alumno: Luis Miguel Toribio Ferrer
#Matricula: 2173385
#Fecha: 02/02/2023

#PARTE I R y Rstudio

# Gastos totales---------------
300 + 240 + 1527 + 400 + 1500 + 1833

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

gastos <- c(celular, transporte, comestibles, gimnasio, alquiler, otros)
gastos

gastos_total <- c(celular + transporte + comestibles + gimnasio + alquiler + otros)
gastos_total

gastos_5_meses <- c(gastos_total*5)
gastos_5_meses

gastos_10_meses <- c(gastos_5_meses*2)
gastos_10_meses

barplot(sort(gastos))


variables <- c('celular','transporte','comestibles','gimnasio','alquiler','otros')
variables

montos <- c(300,240,1527,400,1500,1833)
montos

barplot(height=montos, names=variables,  
        col=c('red','black','green','blue', 'yellow','pink'),
        xlab="variables",
        ylab="gastos",
        main="Facturas mensuales",
        ylim= c(0,2000))
