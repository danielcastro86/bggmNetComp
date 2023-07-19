
clusteringComp <- function(data1, data2, niter, type1, type2)


diff <- cluster_func(data1, data2, type1, type2)

comparison <- ggm_compare_ppc(data1, data2,
                              FUN = cluster_func,
                              custom_obs  = diff,
                              iter = niter)

plot(comparison)

res <- list("difference" = c(diff), "comparison" = c(comparison))

return(res)

