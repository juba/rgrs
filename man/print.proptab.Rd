\encoding{UTF-8}
\name{print.proptab}
\alias{print.proptab}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Affiche un tableau contenant des proportions }
\description{
  Cette fonction affiche un tableau contenant des pourcentages en
  contrôlant leur présentation.
}
\usage{
   \method{print}{proptab}(x, digits=NULL, percent=NULL, justify="right", ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ tableau à afficher }
  \item{digits}{ indique le nombre de décimales à conserver pour
    l'affichage. Si \command{NULL}, on utilise l'attribut \command{digits} de \command{tab} }
  \item{percent}{ indique si on doit afficher (\command{TRUE}) ou non
    (\command{FALSE}) le symbole \% dans chaque case du tableau. Si
    \command{NULL}, on utilise l'attribut \command{percent} de \command{tab} }
  \item{justify}{ justification du contenu des cellules
    (\command{"left"}, \command{"right"} ou \command{"centre"}) }
  \item{...}{ arguments passés à la fonction print.table() }
}
\seealso{  \command{\link[rgrs]{format.proptab}}, \command{\link[rgrs]{Profils}}, \command{\link{print}} }
\author{ Julien Barnier <julien.barnier@ens-lyon.fr>}
\examples{
tab <- table(x=round(runif(100,1,3)),y=round(runif(100,1,5)))
ptab <- lprop(tab, digits=1, percent=TRUE)
print(ptab)
print(ptab, digits=2, percent=FALSE)
}
\keyword{univar}