`wtd.var` <-
function (x, weights = NULL, normwt = FALSE, na.rm = TRUE) 
{
    if (!length(weights)) {
        if (na.rm) 
            x <- x[!is.na(x)]
        return(var(x))
    }
    if (na.rm) {
        s <- !is.na(x + weights)
        x <- x[s]
        weights <- weights[s]
    }
    if (normwt) 
        weights <- weights * length(x)/sum(weights)
    xbar <- sum(weights * x)/sum(weights)
    sum(weights * ((x - xbar)^2))/(sum(weights) - 1)
}
