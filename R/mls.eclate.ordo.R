`mls.eclate.ordo` <-
function(var,vname="MLS.ordo.",mnames=NULL,nb=3) {
  ## On supprime les modalités citées au-delà du rang n
  levels(var) <- sub(paste("^((.*?/){",nb,"}).*",sep=""),"\\1",levels(var),perl=TRUE)
  levels(var) <- sub("/$","",levels(var))
  ## Puis on traite comme une question à choix multiples
  mls.eclate.multi(var,vname=vname,mnames=mnames)
}

