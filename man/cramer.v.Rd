\encoding{UTF-8}
\name{cramer.v}
\alias{cramer.v}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Calcule le V de Cramer d'un tableau croisé }
\description{
  Cette fonction calcule le V de Cramer pour un tableau de contingence.
}
\usage{
cramer.v(tab)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tab}{ Tableau croisé. }
}
\details{
  Le tableau croisé passé en argument est un objet de type table.
}
\value{
  Valeur du V pour le tableau.
}
\author{ Julien Barnier <julien.barnier@ens-lyon.fr>}
\examples{
v1 <- factor(round(runif(500,1,4)))
v2 <- factor(round(runif(500,1,3)))

tab <- table(v1,v2)
print(tab)
cramer.v(tab)
}
\keyword{univar}