\encoding{UTF-8}
\name{copie}
\alias{copie}
\alias{copie.default}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Export d'un objet au format HTML }
\description{
  Cette fonction transforme l'objet passé en argument en HTML via
  R2HTML, puis le place dans le presse-papier ou dans un fichier.
}
\usage{
copie(obj, ...)
\method{copie}{default}(obj, append=FALSE, file=FALSE, filename="temp.html",...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{obj}{ nom de l'objet à exporter }
  \item{append}{ si FALSE (par défaut), remplace le contenu du
    presse-papier ou du fichier par le résultat. Si TRUE, ajoute le
    résultat à la suite du contenu du presse-papier ou du fichier }
  \item{file}{ si FALSE (par défaut), exporte dans le presse-papier. Si
    TRUE, exporte dans le fichier filename }
  \item{filename}{ nom du fichier dans lequel exporter l'objet, si
    file=TRUE }
  \item{...}{ arguments passés à la fonction HTML() }
}
\details{
  ATTENTION, pour l'instant cette fonction ne fonctionne que sous
  Windows en ce qui concerne la copie dans le presse-papier. Sous Linux
  elle nécessite la présence du programme xclip. Elle n'a pas pu être
  testée sous Mac OS X.
}
\value{
  Après exécution, si file=FALSE le presse-papier contient une copie de l'objet
  formaté en HTML. On peut alors facilement coller le résultat
  directement sous Microsoft Excel, puis dans Word avec un second
  copier/coller.

  Si on positionne l'argument file à TRUE, l'objet est exporté dans un
  fichier (par défaut nommé temp.html et situé dans le répertoire de
  travail. On peut ensuite l'intégrer directement dans Microsoft Word ou
  OpenOffice Writer via le menu Insertion > Fichier.
}
\seealso{  \command{\link[R2HTML]{HTML}}, \command{\link[rgrs]{copie.proptab}} }
\author{ Julien Barnier <julien.barnier@ens-lyon.fr>}
\examples{
data(iris)
tab <- table(cut(iris$Sepal.Length,8),cut(iris$Sepal.Width,4))
\dontrun{copie(tab)}
}
\keyword{connection}