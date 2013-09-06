\encoding{UTF-8}
\name{Profils}
\alias{thprop}
\alias{theff}
\title{ Fonctions de calcul d'effectifs et de pourcentages théoriques à partir d'un tableau croisé }
\description{
  Fonctions calculant les effectifs et pourcentages théoriques d'un
  tableau croisé sous l'hypothèse d'indépendance.
}
\usage{
       thprop(tab, digits = 1, percent = FALSE)
       theff(tab, digits = 2)
}
\arguments{
  \item{tab}{ Tableau croisé (objet de type table) }
  \item{digits}{ Nombre de chiffres après la virgule à conserver à l'affichage }
  \item{percent}{ Ajout du symbole \% dans chaque case lors de l'affichage du tableau }
}
\value{
  \command{thprop} renvoit un tableau de pourcentages théoriques sous
  l'hypothèse d'indépendance, \command{theff} renvoit un tableau
  d'effectifs théoriques sous l'hypothèse d'indépendance.
}
\author{ Julien Barnier <julien.barnier@ens-lyon.fr> }
\seealso{ \command{\link{table}}, \command{\link{prop.table}},
  \command{\link{sweep}}, \command{\link{chisq.test}}.}
\examples{
v1 <- factor(round(runif(500,1,4)))
v2 <- factor(round(runif(500,1,3)))

tab <- table(v1,v2)
tab
theff(tab)
thprop(tab)
}
\keyword{univar}
