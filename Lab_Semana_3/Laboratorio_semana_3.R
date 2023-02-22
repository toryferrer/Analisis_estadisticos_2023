
#Luis Miguel Toribio Ferrer
#Fecha: 21/02/2023
#Laboratorio semana 3 

# Parte_1_Importar_datos --------------------------------------------------

getwd()
trees <- read.csv("Lab_Semana_3/DBH_1.CSV", header =TRUE)
head(trees)

dbh <- c(16.5, 25.3,22.1, 17.2, 16.1, 8.1, 34.3, 5.4, 5.7, 11.2, 24.1, 14.5, 7.7, 15.6, 15.9, 10.0, 17.5, 20.5, 7.8, 27.3, 9.7, 6.5, 23.4, 8.2, 28.5, 10.4, 11.5, 14.3, 17.2, 16.8)

#datos de URL no seguras (http)

prof_url <- source_data("http://www.profepa.gob.mx/innovaportal/file/7635/1/accionesInspeccionfoanp.csv")
head(prof_url)

#datos de URL seguras (https)

conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")
head(conjunto)

#datos de github

File <- "https://raw.githubusercontent.com/mgtagle/202_Analisis_Estadistico_2020/master/cuadro1.csv"
inventario <- read.csv(File)
head(inventario)


# Parte 2: Operaciones con base de datos ----------------------------------


