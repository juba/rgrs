`print.proptab` <-
function (...) {
  .Deprecated("copie",package="questionr","L'extension rgrs n'est plus maintenue. Merci d'utiliser l'extension questionr.")    
  ## On passe les arguments à la prochaine méthode, celle de questionr
  NextMethod("print", ...)
}
