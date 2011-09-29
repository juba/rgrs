`quant.cut` <-
function (var, nbclass, include.lowest=TRUE, right=FALSE, dig.lab=5, ...) {
  breaks <- unique(quantile(var,probs=seq(0,1,length=nbclass+1),na.rm=TRUE))
  cut(var,breaks=breaks,dig.lab=dig.lab,right=right, include.lowest=include.lowest, ...)
}


