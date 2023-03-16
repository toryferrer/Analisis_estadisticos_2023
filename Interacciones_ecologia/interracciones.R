library(bipartite)

matriz <- read.csv("Interacciones_ecologia/matriz.csv")
red<-data.frame(matriz, row.names=1)


plotweb(sortweb(red, sort.order="inc"), method = "cca", text.rot = 90, col.low= "blue", bor.col.interaction ="black", col.high ="red",labsize = 1.5, col.interaction="gray")

visweb(red,  type = "diagonal", prednames=TRUE, preynames=TRUE, labsize=1,
       plotsize=5, square="interaction")


library(igraph)

red1 <- graph.incidence(red, weighted=NULL)

plot(red1)

networklevel(red)

specieslevel(red)
             