\encoding{UTF-8}
\name{copie.proptab}
\alias{copie.proptab}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Export d'un objet proptab au format HTML }
\description{
  Applique la fonction générique \command{copie} à un tableau de classe \command{proptab}.
}
\usage{
\method{copie}{proptab}(obj, percent=NULL, digits=NULL, justify="right", ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{obj}{ nom de l'objet à exporter }
  \item{percent}{ affichage du symbole pourcentage dans les cellules du
    tableau }
  \item{digits}{ nombre de décimales à afficher }
  \item{justify}{ justification du contenu des cellules
    (\command{"left"}, \command{"right"} ou \command{"centre"}) }
  \item{...}{ arguments passés à la fonction copie() }
}
\details{
  Pour plus d'informations sur les arguments et les résultats de la
  fonction, se référer à l'aide des fonctions \command{format.proptab} et
  \command{copie}.
}
\seealso{  \command{\link[rgrs]{copie}}, \command{\link[rgrs]{format.proptab}} }
\author{ Julien Barnier <julien.barnier@ens-lyon.fr>}
\examples{
data(iris)
tab <- table(cut(iris$Sepal.Length,8),cut(iris$Sepal.Width,4))
ptab <- lprop(tab, percent=TRUE)
\dontrun{copie(ptab)}
}
\keyword{connection}