`mls.eclate.multi` <-
function(var,vname="MLS.mult.",mnames=NULL) {
  ## Récupération de la liste des modalités
  lev <- levels(var)
  lev <- unique(unlist(strsplit(lev, "/")))
  ## Génération du nom des variables
  if (is.null(mnames)) mnames <- gsub(" ","_",paste(vname,lev,sep="."))
  else mnames <- paste(vname,mnames,sep=".")
  ## Création de la matrice résultat
  result <- matrix(data="N",nrow=length(var),ncol=length(lev))
  char.var <- as.character(var)
  ## Remplissage de la matrice
  for (i in 1:length(lev)) {
    result[grep(lev[i],char.var,fixed=TRUE),i] <- "O"
  }
  ## Transformation de la matrice en df
  result <- data.frame(result,stringsAsFactors=TRUE)
  colnames(result) <- mnames
  result
}

