
avePath_func <- function(data1, data2, type1, type2){

  data1a <- na.omit(data1)
  data2a <- na.omit(data2)

  net1 <- BGGM::estimate(data1a, type = type1, analytic = T)
  net2 <- BGGM::estimate(data2a, type = type2, analytic = T)

  snet1 <- BGGM::select(net1)
  snet2 <- BGGM::select(net2)

  cluster1 <- average.path.length(as.igraph(qgraph(snet1$pcor_adj, DoNotPlot=T, layout="spring", directed= FALSE, theme = "TeamFortress")))

  cluster2 <- average.path.length(as.igraph(qgraph(snet2$pcor_adj, DoNotPlot=T, layout="spring", directed= FALSE, theme = "TeamFortress")))

  abs(cluster1 - cluster2)
}




