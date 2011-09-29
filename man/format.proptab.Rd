\encoding{UTF-8}
\name{format.proptab}
\alias{format.proptab}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Formate le contenu d'un tableau contenant des proportions }
\description{
  Cette fonction formate un tableau contenant des pourcentages en
  contrôlant leur présentation. Cette fonction est prévue pour une
  utilisation interne, et ne devrait pas être utilisée directement.
}
\usage{
   \method{format}{proptab}(x, digits=NULL, percent=NULL, justify="right", ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ tableau à formater }
  \item{digits}{ indique le nombre de décimales à conserver pour
    l'affichage. Si \command{NULL}, on utilise l'attribut \command{digits} de \command{x} }
  \item{percent}{ indique si on doit afficher (\command{TRUE}) ou non
    (\command{FALSE}) le symbole \% dans chaque case du tableau. Si
    \command{NULL}, on utilise l'attribut \command{percent} de \command{x} }
  \item{justify}{ justification du contenu des cellules
    (\command{"left"}, \command{"right"} ou \command{"centre"}) }
  \item{...}{ arguments passés à la fonction format() }
}
\seealso{  \command{\link[rgrs]{copie.proptab}}, \command{\link[rgrs]{print.proptab}} }
\author{ Julien Barnier <julien.barnier@ens-lyon.fr>}
\keyword{print}
