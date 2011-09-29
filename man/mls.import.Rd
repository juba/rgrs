\encoding{UTF-8}
\name{mls.import}
\alias{mls.import}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Import de fichiers Modalisa }
\description{
  Importe un fichier Modalisa enregistré sous forme d'export ASCII
}
\usage{
mls.import(filename, enc = "latin1", modif.names = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{filename}{ Nom du fichier à importer }
  \item{enc}{ Encodage du fichier à importer (normalement toujours latin1) }
  \item{modif.names}{ Correction ou non des noms de variables. Si
    \command{modif.names} vaut TRUE, alors les noms de variables importés
    sont convertis en minuscules et les espaces remplacés par des tirets
    bas.}
}
\value{
  Retourne un data frame contenant les données importées.
}
\author{ Julien Barnier <julien.barnier@ens-lyon.fr> }
\seealso{ \command{\link{mls.export}}, \command{\link{mls.eclate.multi}},
  \command{\link{mls.eclate.ordo}}, \command{\link{mls.table.multi}}  }
\examples{
## Not run:
\dontrun{mydf <- mls.import("export_modalisa.TXT")}
}
\keyword{file}
\keyword{utilities}

