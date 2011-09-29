\encoding{UTF-8}
\name{genere.tableau}
\alias{genere.tableau}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Génère une représentation ODF d'un objet }
\description{
  Cette fonction fait appel à la fonction odfTable() correspondant au type
  d'objet passé en paramètres.
}
\usage{
genere.tableau(x, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ objet à exporter }
  \item{...}{ arguments passés à la fonction odfTable() }
}
\details{
  Actuellement la fonction permet de générer une version ODF des
  objets de type table à une ou deux dimensions, des data frames, des
  matrices et des vecteurs.

  Actuellement que cette fonction n'est qu'une interface à odfTable() qui
  évite de devoir convertir les objets de type table en matrice ou en data frame.
}
\value{
  Renvoit une représentation au format ODF (XML) de l'objet.
}
\seealso{  \command{\link[odfWeave]{odfTable}} }
\author{ Julien Barnier <julien.barnier@ens-lyon.fr>}
\examples{
## Not run:
\dontrun{
data(iris)
tab <- table(iris$Species)
genere.tableau(tab)
}
}
\keyword{connection}