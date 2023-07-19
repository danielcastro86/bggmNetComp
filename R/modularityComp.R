
modularityComp <- function(data1, data2, niter, type1, type2)


diff <- mod_func(data1, data2, type1, type2)

comparison <- ggm_compare_ppc(data1, data2,
                              FUN = mod_func,
                              custom_obs  = diff,
                              iter = niter)

plot(comparison)

res <- list("difference" = c(diff), "comparison" = c(comparison))

return(res)


