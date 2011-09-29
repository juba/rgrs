`renomme.variable` <-
function (df, old, new) {
  names(df)[which(names(df)==old)] <- new
  df
}
