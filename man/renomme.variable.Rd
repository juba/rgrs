\encoding{UTF-8}
\name{renomme.variable}
\alias{renomme.variable}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Renomme une colonne d'un tableau de données }
\description{
 Renomme une colonne (variable) d'un tableau de données
}
\usage{
renomme.variable(df, old, new)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{df}{ tableau de données (data.frame) }
  \item{old}{ nom de la variable à renommer }
  \item{new}{ nouveau nom }
}
\value{
  Renvoit un tableau de données avec la colonne indiquée renommée
}
\author{ Julien Barnier <julien.barnier@ens-lyon.fr> }
\examples{
data(iris)
str(iris)
iris <- renomme.variable(iris, "Species", "especes")
str(iris)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ manip }

