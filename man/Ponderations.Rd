\encoding{UTF-8}
\name{Pondérations}
\alias{wtd.mean}
\alias{wtd.var}
\alias{wtd.table}
\title{ Traitement de données pondérées }
\description{
  Fonctions permettant le calcul de moyennes (wtd.mean), variances
  (wtd.var), tris à plat et tableaux croisés (wtd.table) pour des
  variables pondérées.
}
\usage{
wtd.mean(x, weights = NULL, normwt = "ignored", na.rm = TRUE) 
wtd.var(x, weights = NULL, normwt = FALSE, na.rm = TRUE) 
wtd.table(x, y = NULL, weights = NULL, normwt = FALSE, na.rm = TRUE) 
}
\arguments{
  \item{x, y}{ Vecteurs de données. Doit être numérique pour wtd.mean et
    wtd.var.}
  \item{weights}{ Vecteur des poids. Doit être de même longueur que x }
  \item{normwt}{ Normalisation des poids pour que les effectifs totaux
    pondérés soient les mêmes que les effectifs initiaux }
  \item{na.rm}{ Suppression des valeurs manquantes }  
}
\details{
  Si \command{weights} n'est pas fourni, les fonctions utilisent une
  pondération uniforme.
}
\value{
  Pour \command{wtd.table}, si un seul vecteur est fourni la fonction calcule
  le tri à plat pondéré de la variables. Si deux vecteurs sont passés en
  paramètres on obtient le tri croisé pondéré des deux variables.
}
\author{ Les fonctions \command{wtd.mean} et \command{wtd.var} sont des copies
  conformes des fonctions du même nom de l'extension \command{Hmisc}. Elles
  ont été développées par :
  Frank Harrell 
   Department of Biostatistics 
   Vanderbilt University School of Medicine 
   f.harrell@vanderbilt.edu
   
  Pour \command{wtd.table} : Julien Barnier <julien.barnier@ens-lyon.fr> }
\seealso{ \command{\link{table}}, \command{\link{mean}}, \command{\link{var}},
  \command{\link[Hmisc]{wtd.table}}, \command{\link[Hmisc]{wtd.quantile} et
    l'extension \command{survey}}}
\examples{

data(hdv2003)

mean(hdv2003$age)
wtd.mean(hdv2003$age, weights=hdv2003$poids)

table(hdv2003$sexe)
wtd.table(hdv2003$sexe, weights=hdv2003$poids)
wtd.table(hdv2003$sexe, weights=hdv2003$poids, normwt=TRUE)

table(hdv2003$sexe, hdv2003$hard.rock)
wtd.table(hdv2003$sexe, hdv2003$hard.rock, weights=hdv2003$poids)

}
\keyword{univar}