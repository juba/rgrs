`selectwd` <-
function() {
  require(tcltk)
  wd <- tclvalue(tkchooseDirectory())
  setwd(wd)
  cat("Nouveau repertoire de travail : ",wd,"\n",sep="")
  cat("Pour automatiser ce changement dans un script, utilisez :\n")
  cat("setwd(\"",wd,"\")\n",sep="")
}
