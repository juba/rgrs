`wtd.mean` <-
function (x, weights = NULL, normwt = "ignored", na.rm = TRUE) 
{
    if (!length(weights)) 
        return(mean(x, na.rm = na.rm))
    if (na.rm) {
        s <- !is.na(x + weights)
        x <- x[s]
        weights <- weights[s]
    }
    sum(weights * x)/sum(weights)
}
