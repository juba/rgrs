\encoding{UTF-8}
\name{freq}
\alias{freq}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Retourne le tri à plat d'une variable }
\description{
  Cette fonction affiche le tri à plat d'une variable (vecteur).
}
\usage{ 
freq(x, digits=1, cum=FALSE, total=FALSE, exclude=NULL, sort="")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ vecteur pour lequel on souhaite obtenir le tri à plat ou
    tableau de dimension 1}
  \item{digits}{ nombre de chiffres à conserver après la virgule }
  \item{cum}{ si TRUE, affiche les pourcentages cumulés }
  \item{total}{ si TRUE, affiche le total des effectifs }
  \item{exclude}{ valeurs à exclure du tri à plat (aucune par défaut) }
  \item{sort}{ si "inc", le tableau résultat est trié par effectifs
    croissants. Si "dec", par effectifs décroissants. Sinon, l'ordre des
    modalités par défaut est conservé.}
}
\details{
  L'objet x est soit un vecteur, dans ce cas le tri à plat est calculé à
  l'aide de la fonction table, soit déjà un tri à plat, c'est-à-dire une
  table à une dimension, dans ce cas c'est cette table qui est utilisée
  telle quelle.
}
\value{
  Un data frame dont les noms de lignes sont les modalités de la
  variables, et dont les colonnes sont les effectifs, le pourcentage et
  (si demandé) le pourcentage cumulé de ces modalités.
}
\seealso{  \command{\link{table}}, \command{\link{prop}} }
\author{ Julien Barnier <julien.barnier@ens-lyon.fr>}
\examples{
v <- c(round(runif(230,1,5)), NA)
freq(v)
freq(v, cum=TRUE)
freq(v, exclude=NA)
freq(v, exclude=c(1,2,NA))
freq(v, digits=3)
freq(v, total=TRUE)
freq(v, sort="inc")
tab <- table(v)
freq(tab)
}
\keyword{univar}