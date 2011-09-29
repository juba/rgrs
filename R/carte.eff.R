`carte.eff` <-
 function (sp, data, varname,  sp.key="id", data.key="id", nbcuts=4, at=NULL, main="", sub=NULL, posleg="topleft", col.bg="red", col.border="white", cex=5, pch=21, plot.polygons=TRUE, leg.options=NULL, ...) {
  require(sp)
  tmp <- data[,c(data.key, varname)]
  ## Creation d'une variable temporaire pour recuperer l'ordre initial apres le merge
  ## (Joel Gombin)
  sp@data$rgrs.temp.sort.var <- 1:nrow(sp@data)
  sp@data <- merge(sp@data, tmp, by.x=sp.key, by.y=data.key, all.x=TRUE, all.y=FALSE, sort=FALSE)
  sp@data <- sp@data[order(sp@data$rgrs.temp.sort.var, na.last = TRUE),]
  tmp.var <- na.omit(sp@data[,varname])
  if(plot.polygons) plot(sp, col="white", ...)
  coords <- coordinates(sp)
  na.values <- is.na(sp@data[,varname]) | is.nan(sp@data[,varname])
  if (sum(na.values)>0) plot(sp[na.values,], density=30, angle=45, add=TRUE)
  points(coords, cex=sp@data[,varname]/max(tmp.var)*cex, col=col.border,bg=col.bg,pch=pch)
  title(main,sub,line=1)
  box()
  if (is.null(at)) {
    at <- pretty(tmp.var,n=nbcuts)
    at[length(at)] <- max(tmp.var)
  }
  if (posleg != "none" && !is.null(posleg)) {
    leg.default.options <- list(at, posleg=posleg, cex.leg=cex, col.bg=col.bg, col.border=col.border, pch=pch)
    leg.args <- c(leg.default.options, leg.options)
    do.call(carte.eff.legende, leg.args, quote=TRUE) 
  }
}

