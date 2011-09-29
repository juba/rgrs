`carte.prop` <-
function (sp, data, varname, sp.key="id", data.key="id", diverg=FALSE, diverg.zero = 0, nbcuts=6, at=NULL, at.lim=FALSE, main="", sub=NULL, posleg="topleft", palette.pos="Reds", palette.neg="Blues", palette=NULL, leg.options=NULL, ...) {
  require(sp)
  require(RColorBrewer)
  tmp <- data[,c(data.key, varname)]
  ## Creation d'une variable temporaire pour recuperer l'ordre initial apres le merge
  ## (Joel Gombin)
  sp@data$rgrs.temp.sort.var <- 1:nrow(sp@data)
  sp@data <- merge(sp@data, tmp, by.x=sp.key, by.y=data.key, all.x=TRUE, all.y=FALSE, sort=FALSE)
  sp@data <- sp@data[order(sp@data$rgrs.temp.sort.var, na.last = TRUE),]
  tmp.var <- na.omit(sp@data[,varname])
  if (is.null(at)) at <- pretty(tmp.var,n=nbcuts)
  if (!is.null(at) && at.lim) {
    vmax <- max(tmp[,varname], na.rm=TRUE)
    if (max(at) < vmax) at <- c(at,round(vmax,2))
    vmin <- min(tmp[,varname], na.rm=TRUE)
    if (vmin < min(at)) at <- c(round(vmin,2),at)
  }
  value <- findInterval(sp@data[,varname],at,all.inside=TRUE)
  if (is.null(palette)) {
    if (diverg) {
      nb.pos <- sum(at>diverg.zero)
      if (nb.pos>0) {
        if (nb.pos<3) palpos <-  brewer.pal(3,palette.pos)[1:nb.pos]
        else palpos <- brewer.pal(nb.pos,palette.pos)
        palette <- palpos
      }
      nb.neg <- sum(at<diverg.zero)
      if (nb.neg>0) {
        if (nb.neg<3) palneg <- brewer.pal(3,palette.neg)[1:nb.neg]
        else palneg <- brewer.pal(nb.neg,palette.neg)
        palette <- c(rev(palneg),palette)
      }
    }
    else palette <- brewer.pal(length(at)-1,palette.pos)
  }
  cols <- palette[value]
  plot(sp, col=cols, ...)
  na.values <- is.na(sp@data[,varname]) | is.nan(sp@data[,varname])
  na.leg <- FALSE
  if (sum(na.values)>0) {
    plot(sp[na.values,], density=30, angle=45, add=TRUE)
    na.leg <- TRUE
  }    
  title(main,sub,line=1)
  box()
  if (posleg != "none" && !is.null(posleg)) {
    leg.default.options <- list(at, palette, posleg=posleg, na.leg=na.leg)
    leg.args <- c(leg.default.options, leg.options)
    do.call(carte.prop.legende, leg.args) 
  }
}
