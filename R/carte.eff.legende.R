`carte.eff.legende` <-
function (posleg="bottomleft", at, cex.leg, inset=c(0.02,0.02), cex.text=0.8, col.bg, col.border, pch) {
  at <- at[at!=0]
  usr <- par("usr")
  nb.rect <- length(at) - 1
  inset.x <- (usr[2] - usr[1]) * inset[1]
  inset.y <- (usr[4] - usr[3]) * inset[2]
  max.width <- strwidth("M",cex=cex.leg)
  text.width <- max(strwidth(at))
  space.width <- (usr[2] - usr[1])*0.005
  total.width <- max.width + space.width + text.width
  heights <- sapply(at, function(c) { strheight("o",cex=c/max(at)*cex.leg*0.3,units="user")} )
  space.height <- (usr[4] - usr[3])*0.005
  total.height <- sum(heights) + space.height * (length(at)-1)
  left <- switch(posleg,
                 bottomright = , topright = , right = usr[2] - total.width - inset.x,
                 bottomleft = , left = , topleft = usr[1] + inset.x,
                 bottom = , top = , center = (usr[1] + usr[2] - total.width)/2)
  top <- switch(posleg, bottomright = , bottom = , bottomleft = usr[3] + total.height + inset.y,
                topleft = , top = , topright  = usr[4] - inset.y,
                left = , right = , center = (usr[3] + usr[4] + total.height)/2)
  cumheights <- cumsum(heights+c(0,rep(space.height,length(heights)-1)))-heights/2
  points(rep(left+max.width/2, length(at)), top - cumheights, cex=at/max(at)*cex.leg, col=col.border,bg=col.bg,pch=pch)
  text(rep(left+max.width+space.width, length(at)), top - cumheights, labels=at,adj=c(0,0.5),cex=cex.text)
}
