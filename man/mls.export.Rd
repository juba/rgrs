\encoding{UTF-8}
\name{mls.export}
\alias{mls.export}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Export de données vers Modalisa }
\description{
  Exporte un data frame dans un fichier texte importable ensuite sous
  Modalisa avec la fonction \emph{Import ASCII}
}
\usage{
mls.export(df, filename)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{df}{ data frame à exporter }
  \item{filename}{ Nom du fichier d'export }
}
\author{ Julien Barnier <julien.barnier@ens-lyon.fr> }
\seealso{  \command{\link{mls.import}} }
\examples{
## Not run:
\dontrun{mls.export(mydf, "export_modalisa.txt")}
}
\keyword{ file }
\keyword{ utilities }
