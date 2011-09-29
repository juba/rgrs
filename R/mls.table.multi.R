`mls.table.multi` <-
function(var) {
  lev <- levels(var)
  lev <- unique(unlist(strsplit(lev, "/")))
  as.table(sapply(lev, function(l) { length(grep(l,var)) } ))
}

