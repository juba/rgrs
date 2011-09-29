`thprop` <-
function (tab, digits=1, percent=FALSE) {
  dn <- names(dimnames(tab))
  tmp <- as.vector(apply(tab,1,sum)/sum(tab))%*%t(as.vector(apply(tab,2,sum)/sum(tab)))
  colnames(tmp) <- colnames(tab)
  rownames(tmp) <- rownames(tab)
  result <- as.table(tmp*100)
  names(dimnames(result)) <- dn
  class(result) <- c("proptab", class(result))
  attr(result, "percent") <- percent
  attr(result, "digits") <- digits
  return(result)
}

