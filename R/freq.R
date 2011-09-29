`freq` <-
function (x, digits=1, cum=FALSE, total=FALSE, exclude=NULL, sort="") {
  if (is.factor(x)) x <- factor(x, exclude=exclude)
  if (is.table(x)) tab <- x
  else tab <- table(x, exclude=exclude)
  effectifs <- as.vector(tab)
  pourc <- as.vector(effectifs/sum(effectifs)*100)
  result <- data.frame(n=effectifs, pourc=pourc)
  rownames(result) <- ifelse(is.na(names(tab)),"NA",names(tab))
  if (sort=="inc") result <- result[order(result$n),]
  if (sort=="dec") result <- result[order(result$n, decreasing=TRUE),]
  if (total) result <- rbind(result, Total=apply(result,2,sum))
  if (cum) {
    pourc.cum <- cumsum(result$pourc)
    if (total) pourc.cum[length(pourc.cum)] <- 100
    result <- cbind(result, pourc.cum)
  }
  names(result)[which(names(result)=="pourc")] <- "%"
  names(result)[which(names(result)=="pourc.cum")] <- "%cum"
  round(result, digits=digits)
}

