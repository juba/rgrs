\encoding{UTF-8}
\name{Profils}
\alias{lprop}
\alias{cprop}
\alias{prop}
\alias{thprop}
\alias{theff}
\alias{residus}
\title{ Fonctions de calcul de pourcentages à partir d'un tableau croisé }
\description{
  Fonctions calculant différents pourcentages d'un tableau croisé
}
\usage{
       cprop(tab, digits = 1, total = TRUE, percent = FALSE)
       lprop(tab, digits = 1, total = TRUE, percent = FALSE)
       prop(tab, digits = 1, total = TRUE, percent = FALSE)
       thprop(tab, digits = 1, percent = FALSE)
       theff(tab, digits = 2)
       residus(tab, digits = 2)
}
\arguments{
  \item{tab}{ Tableau croisé (objet de type table) }
  \item{digits}{ Nombre de chiffres après la virgule à conserver à l'affichage }
  \item{total}{ Ajouter des lignes/colonnes pour les marges du tableau }
  \item{percent}{ Ajout du symbole \% dans chaque case lors de l'affichage du tableau }
}
\details{
  Dans le cas des tableaux contenant des proportions (\command{cprop},
  \command{lprop}, \command{prop}, \command{thprop}), les options \command{digits}
  et \command{percent} sont des attributs du tableau résultant qui
  contrôlent l'affichage du tableau avec \command{print} ou \command{copie}. On peut modifier
  ponctuellement ces options en les passant directement à
  \command{\link[rgrs]{print.proptab}} \command{\link[rgrs]{copie.proptab}}. Les données numériques stockées
  conservent l'intégralité des valeurs décimales.
}
\value{
  \command{cprop} retourne un tableau contenant les pourcentages colonnes,
  \command{lprop} renvoit un tableau contenant les poiurcentages lignes,
  \command{prop} renvoit un tableau contenant les pourcentages globaux,
  \command{thprop} renvoit un tableau de pourcentages théoriques sous
  l'hypothèse d'indépendance, \command{theff} renvoit un tableau
  d'effectifs théoriques sous l'hypothèse d'indépendance, et
  \command{residus} renvoit le tableau des résidus de Pearson.
}
\author{ Julien Barnier <julien.barnier@ens-lyon.fr> }
\seealso{ \command{\link{table}}, \command{\link{prop.table}},
  \command{\link{sweep}}, \command{\link{chisq.test}},
  \command{\link[rgrs]{print.proptab}}, \command{\link[rgrs]{copie.proptab}}}
\examples{
v1 <- factor(round(runif(500,1,4)))
v2 <- factor(round(runif(500,1,3)))

tab <- table(v1,v2)
tab
lprop(tab,digits=5)
cprop(tab,digits=2)
prop(tab)
thprop(tab, percent=TRUE)
theff(tab)
residus(tab)
}
\keyword{univar}