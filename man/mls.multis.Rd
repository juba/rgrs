\encoding{UTF-8}
\name{Questions multiples Modalisa}
\alias{mls.table.multi}
\alias{mls.eclate.multi}
\alias{mls.eclate.ordo}
\title{ Traitement des questions à réponses multiples
  importées depuis Modalisa. }
\description{
  Ces fonctions permettent de transformer ou de traiter des questions à
  réponses multiples importées depuis un export Modalisa.
}
\usage{
       mls.table.multi(var)
       mls.eclate.multi(var, vname = "MLS.mult.", mnames = NULL)
       mls.eclate.ordo(var, vname = "MLS.ordo.", mnames = NULL, nb = 3)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{var}{ Variable correspondant à une question à réponses multiples }
  \item{vname}{ Préfixe à ajouter aux noms des variables générées (si
    \command{mnames=NULL}) }
  \item{mnames}{ Noms des variables générées }
  \item{nb}{ Dans le cas de questions à réponses multiples ordonnées,
    nombre de modalités à retenir }
}
\details{
  \command{mls.table.multi} génère le tri à plat des modalités d'une
  question à réponses multiples. \command{mls.eclate.multi} transforme une
  question à réponses multiples en autant de questions binaires qu'il y
  a de modalités. \command{mls.eclate.ordo} fait la même chose pour une
  question à réponses multiples ordonnées.
}
\value{
  \command{mls.table.multi} renvoit une table contenant le tri à plat des
  modalités de la question à réponses multiples.

  \command{mls.table.multi} renvoit un data frame avec autant de variables
  que la variable initiale a de modalités. Chaque variable créée
  possède les modalités \command{O} si l'individu correspondant a choisi la
  modalité, et \command{N} sinon.

  \command{mls.table.ordo} renvoit un data frame semblable à celui généré
  par \command{mls.table.multi}, mais il se limite aux \command{nb} premières
  modalités.
  
}
\note{
  De manière générale, il est préférable de toujours éviter l'usage de
  questions à réponses multiples dans Modalisa, et de privilégier dès la
  conception du questionnaire l'usage de séries de questions binaires.
}
\author{ Julien Barnier <julien.barnier@ens-lyon.fr> }
\seealso{ \command{\link{mls.import}} }
\examples{
## Not run:
\dontrun{
mydf <- mls.import("export_modalisa.TXT")
mls.table.multi(mydf$couleurs)
test <- cbind(test,mls.eclate.multi(mydf$couleurs, vname="couleur"))
}
}
\keyword{ manip }
\keyword{ utilities }
