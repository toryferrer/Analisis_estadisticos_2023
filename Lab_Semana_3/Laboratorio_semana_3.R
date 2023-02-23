
#Luis Miguel Toribio Ferrer
#Fecha: 21/02/2023
#Laboratorio semana 3 

# Parte_1_Importar_datos --------------------------------------------------

getwd()
trees <- read.csv("DBH_1.CSV", header =TRUE)
head(trees)

dbh <- c(16.5, 25.3,22.1, 17.2, 16.1, 8.1, 34.3, 5.4, 5.7, 11.2, 24.1, 14.5, 7.7, 15.6, 15.9, 10.0, 17.5, 20.5, 7.8, 27.3, 9.7, 6.5, 23.4, 8.2, 28.5, 10.4, 11.5, 14.3, 17.2, 16.8)

#accesar a datos de internet

#datos de URL no seguras (http)

#estos datos se ingresaron de la siguiente manera dado que no se supo la libreria para que corriera como venia en el ejercicio

#ademas se agrego el # para ponerlos como texto porque al momento de copilarlos no dejaba y marcaba como que el programa no econtro el archivo especificado

prof_url <-"http://www.profepa.gob.mx/innovaportal/file/7635/1/accionesInspeccionfoanp.csv"
profepa <- read.csv(prof_url, encoding = "latin1")
head(profepa)

mean(profepa$Inspección)

fivenum(profepa$Inspección)

mayor.inc <- subset(profepa, profepa$Inspección>=16)
mayor.op <- subset(profepa, profepa$Inspección >=2)
#datos de URL seguras (https)

library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")
head(conjunto)

#datos de github

#cuando el link es muy largo se puede utilizar el pasteo pero dejando la barra / al final de cada separación

File <- paste0("https://raw.githubusercontent.com/mgtagle/", 
               "202_Analisis_Estadistico_2020/master/cuadro1.csv")

inventario <- read.csv(File)
head(inventario)


# Parte 2: Operaciones con base de datos ----------------------------------

# media
mean(trees$dbh) #el signo de $ informa que necesitamos la calumna dbh

#desviacion estandar
sd(trees$dbh)

# seleccion mediante restricciones

#igual o mayor (>=), mayor que (>), igual que (==)
#igual o menor (<=), menor que (<), no igual (!=)

# Indica la sumatoria de los individuos en el objeto trees con un dbh < a 10

sum(trees$dbh < 10)

#cuales individuos son inferiores a dbh<10

which(trees$dbh<10)

#excluir diametro que se encuentra en la parcela 2

# no tenemos la columna de parcelas en los datos 

trees.13 <- trees[!(trees$parcela=="2")]

head(trees.13)

#seleccion de una submuestra #diametro menores o iguales a 10

trees.1 <- subset(trees, dbh<=10)
head(trees.1)

mean(trees$dbh)

mean(trees.1$dbh)

hist(trees$dbh, ylab = "Frecuencia", xlab = "DBH", main = "Muestra orinal trees")

hist(trees.1$dbh, ylab = "Frecuencia", xlab = "DBH",  main = "dbh < 10 cm. trees.1")


# Parte 3 Representacion grafica ------------------------------------------

#histogramas 

mamiferos <- read.csv("https://www.openintro.org/data/csv/mammals.csv")

head(mamiferos)

#Por el momento trabajaremos con la variable total_sleep para generar el histograma:

hist(mamiferos$total_sleep)

# dar formato a las histogramas 

hist(mamiferos$total_sleep, #datos
     xlim = c(0,20), ylim = c(0,14), main = "Total de horas sueño de las 39 especies", #cambiar titulo
     xlab = "Horas sueño", #cambiar eje de las x
     ylab = "Frecuencia", #cambiar eje de las y
     las = 1, #cambiar orientacion de y
     col = "#883300") #cambiar color a las barras


#Barplot o grafica de barras

data("chickwts")

head(chickwts[c(1:2, 42:43, 62:64),])

# acomodar datos en columnas 

feeds <- table(chickwts$feed)
feeds

barplot(feeds)
# ordenarla de forma decreciente 

barplot(feeds[order(feeds, decreasing = FALSE)])

#y darle presentacion a la grafica 
barplot(feeds[order(feeds, decreasing = FALSE)], main = "Frecuencias por tipos de
alimentación",
        xlab = "Numero de pollos",
        las=1,
        col= "yellow",
        horiz = TRUE)


