`mls.import` <-
function (filename, enc="latin1", modif.names=TRUE) {
  tmp <- read.table(file(filename,encoding=enc),header=TRUE,sep="\t",quote="",na.strings="")
  if (modif.names) {
    colnames(tmp) <- tolower(colnames(tmp))
    colnames(tmp) <- gsub(" ","_",colnames(tmp))
  }
  tmp
}

