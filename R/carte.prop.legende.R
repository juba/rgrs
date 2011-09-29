`carte.prop.legende` <-
 function (posleg="topleft", at, palette, rect.width=0.03, rect.height=0.03, inset=c(0.02,0.02), na.leg=TRUE, na.string="NA",cex=0.8) {
  usr <- par("usr")
  nb.rect <- length(at) - 1
  inset.x <- (usr[2] - usr[1]) * inset[1]
  inset.y <- (usr[4] - usr[3]) * inset[2]
  rect.width <- (usr[2] - usr[1]) * rect.width
  text.width <- max(strwidth(at))
  if (na.leg) text.width <- max(text.width, strwidth(na.string))
  space.width <- rect.width / 3
  total.width <- rect.width + space.width + text.width
  rect.height <- (usr[4] - usr[3]) * rect.height
  total.height <- (nb.rect+1) * rect.height
  if (na.leg) total.height <- total.height + 2 * rect.height
  left <- switch(posleg,
                 bottomright = , topright = , right = usr[2] - total.width - inset.x,
                 bottomleft = , left = , topleft = usr[1] + inset.x,
                 bottom = , top = , center = (usr[1] + usr[2] - total.width)/2)
  top <- switch(posleg, bottomright = , bottom = , bottomleft = usr[3] + total.height + inset.y,
                topleft = , top = , topright  = usr[4] - inset.y,
                left = , right = , center = (usr[3] + usr[4] + total.height)/2)
  rects <- 1:nb.rect
  rect(left, top-rects*rect.height, left+rect.width, top-(rects+1)*rect.height, col=rev(palette))
  text(left+rect.width+space.width, top-(1:(nb.rect+1))*rect.height,labels=rev(at),adj=c(0,0.5),cex=cex)
  if (na.leg) {
    rect(left, top-(nb.rect+2)*rect.height, left+rect.width, top-(nb.rect+3)*rect.height, density=30, angle=45)
    text(left+rect.width+space.width, top-(nb.rect+2.5)*rect.height,labels=na.string,adj=c(0,0.5),cex=cex)
  }
}
