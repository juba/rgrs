`cramer.v` <-
function(tab) {
  n <- sum(tab)
  chid <- chisq.test(tab,correct=FALSE)$statistic
  dim <- min(nrow(tab),ncol(tab)) - 1
  as.numeric(sqrt(chid/(n*dim)))
}

