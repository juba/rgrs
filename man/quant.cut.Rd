\encoding{UTF-8}
\name{quant.cut}
\alias{quant.cut}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Transforme une variable quantitative en variable qualitative }
\description{
  Cette fonction transforme une variable quantitative en une variable
  qualitative ayant des modalités comportant les même effectifs.
}
\usage{
quant.cut(var, nbclass, include.lowest=TRUE, right=FALSE, dig.lab=5, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{var}{ variable (vecteur) à transformer }
  \item{nbclass}{ nombre de classes souhaité }
  \item{include.lowest, right, dig.lab, ... }{ paramètres passés à la
    fonction cut }
}
\details{
  Il s'agit juste d'un wrapper autour des fonctions cut et quantile
}
\value{
  Renvoit un vecteur de type factor généré par cut
}
\seealso{  \command{\link{cut}}, \command{\link{quantile}} }
\author{ Julien Barnier <julien.barnier@ens-lyon.fr>}
\examples{
data(iris)
sepal.width3cl <- quant.cut(iris$Sepal.Width,3)
freq(sepal.width3cl)
}
\keyword{manip}