`mls.export` <-
function(df, filename) {
  write.table(df, file=file(filename, encoding="latin1"), quote=FALSE, dec=",", sep="\t", row.names=FALSE, eol="\r\n")
}

