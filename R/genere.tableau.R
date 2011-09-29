`genere.tableau` <-
function (x, ...) {
  require(odfWeave)
  if (is.matrix(x)) {
    return(odfWeave::odfTable.matrix(x, ...))
  }
  if (is.table(x) &  length(dim(x)) == 1) {
    return(odfWeave::odfTable(as.data.frame(x), ...))
  }
  return(odfWeave::odfTable(x, ...))
}
