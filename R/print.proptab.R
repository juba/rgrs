`print.proptab` <-
function (x, digits=NULL, percent=NULL, justify="right", ...) {
  if (!inherits(x, "proptab")) stop("Le tableau n'est pas de classe proptab")
  x <- format.proptab(x, digits=digits, percent=percent, justify=justify)
  print.table(x, ...)
}
