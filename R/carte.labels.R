`carte.labels` <-
function (sp, labels, coords=NULL, cex=1, font=2, col="black", outline=FALSE, outline.decal=1, outline.col="white") {
  require(sp)
  if (is.null(coords)) coords <- coordinates(sp)
  ##coords <- pointLabel(x=coords, labels=labels, font=font, cex=cex, doPlot=FALSE)
  if (outline) {
    decal.x <- strwidth('x',cex=cex) / 15 * outline.decal
    decal.y <- strheight('x',cex=cex) / 15 * outline.decal
    x <- coords[,1]
    y <- coords[,2]
    text(x+decal.x,y,labels,font=font,cex=cex,col=outline.col)
    text(x-decal.x,y,labels,font=font,cex=cex,col=outline.col)
    text(x,y+decal.y,labels,font=font,cex=cex,col=outline.col)
    text(x,y-decal.y,labels,font=font,cex=cex,col=outline.col)
  }
  text(coords[,1],coords[,2],labels,font=font,cex=cex,col=col)
}
