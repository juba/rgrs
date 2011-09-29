`cprop` <-
function (tab, digits = 1, total = TRUE, percent=FALSE) {
  dn <- names(dimnames(tab))
  if (total) tab <- cbind(tab, Ensemble=apply(tab,1,sum))
  tab <- prop.table(tab,2)*100
  if (total) tab <- rbind(tab,Total=apply(tab,2,sum))
  result <- as.table(tab)
  names(dimnames(result)) <- dn
  class(result) <- c("proptab", class(result))
  attr(result, "percent") <- percent
  attr(result, "digits") <- digits
  return(result)
}

