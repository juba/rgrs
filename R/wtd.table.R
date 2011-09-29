`wtd.table` <-
function (x, y = NULL, weights = NULL, normwt = FALSE, na.rm = TRUE) 
{
  if (is.null(weights)) weights <- rep(1, length(x))  
  if (length(x) != length(weights)) stop("x et weights doivent etre de meme longueur")
  if (!is.null(y) & (length(x) != length(y))) stop("x et y doivent etre de meme longueur")
  if (na.rm) {
     s <- !is.na(x) & !is.na(weights)
     if (!is.null(y)) s <- s & !is.na(y)
     x <- x[s, drop = FALSE]
     if (!is.null(y)) y <- y[s, drop = FALSE]
     weights <- weights[s]
  }
  if (normwt) {
    weights <- weights * length(x)/sum(weights)
  }
  if (is.null(y)) {
    result <- tapply(weights, x, sum, simplify=TRUE)
  }
  else {
    result <- tapply(weights, list(x,y), sum, simplify=TRUE)
  }
  result[is.na(result)] <- 0
  as.table(result)
}


