cseq <- function(x, y, t0, t) {
  cseq_vals <- unlist(sapply(x, function(xi) {
    integrate(splinefun(x, y), lower = t0, upper = xi)$value
  }))

  return(data.frame(
    t = x,
    cseq = cseq_vals
  ))
}
