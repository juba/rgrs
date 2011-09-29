\encoding{UTF-8}
\name{Cartographie.legende}
\alias{carte.prop.legende}
\alias{carte.eff.legende}
\alias{carte.qual.legende}
\title{ Affichage des légendes pour les représentations cartographiques }
\description{
  Fonctions permettant l'affichage de la légende pour une représentation
  cartographique simple de données de type proportions
  (\command{carte.prop.legende}), effectifs
  (\command{carte.eff.legende}) 
  ou qualitatif  (\command{carte.qual.legende}).
}
\usage{

carte.prop.legende(posleg="topleft", at, palette, rect.width=0.03, 
                   rect.height=0.03, inset=c(0.02,0.02), na.leg=TRUE, 
                   na.string="NA", cex=0.8) 

carte.qual.legende(posleg="topleft", qual.names, palette, rect.width=0.03, 
                   rect.height=0.03, inset=c(0.02,0.02), na.leg=TRUE, 
                   na.string="NA", cex=0.8)

carte.eff.legende(posleg="bottomleft", at, cex.leg, inset=c(0.02,0.02),
                  cex.text=0.8, col.bg, col.border, pch)

}
\arguments{
  \item{posleg}{position de la légende, à indiquer de la même manière
    que pour \command{legend}. Si l'argument vaut "none" ou NULL, aucune
    légende n'est affichée.}
  \item{palette}{Palette utilisée pour l'affichage.}
  \item{at}{Limites des classes de valeurs.}
  \item{qual.names}{Nom des classes de valeurs.}
  \item{rect.width}{Largeur des rectangles.}
  \item{rect.height}{Hauteur des rectangles.}
  \item{inset}{Position par rapport au cadre du graphique.}
  \item{na.leg}{Affichage ou non de la légende pour les valeurs
    manquantes.}
  \item{na.string}{Label de la légende pour les valeurs manquantes.}
  \item{cex}{Taille des caractères de la légende.}
  \item{cex.text}{Taille des caractères de la légende
    (\command{carte.eff.legende}).}  
  \item{cex.leg}{Taille des symboles de la légende
    (\command{carte.eff.legende}).}  
  \item{col.bg}{Couleur des symboles de la légende
    (\command{carte.eff.legende}).}  
  \item{col.border}{Couleur de la bordure des symboles de la légende
    (\command{carte.eff.legende}).}    
  \item{pch}{Type de symboles de la légende (\command{carte.eff.legende}).}      
}
\details{
  A priori ces fonctions ne sont jamais utilisées directement, elles
  sont appelées par la fonction cartographique correspondante,
  éventuellement en leur fournissant des arguments via la liste
  \command{leg.options}.
}
\value{
  Affiche la légende correspondante. Ne retourne pas de
  valeur particulière.
}
\author{ Julien Barnier <julien.barnier@ens-lyon.fr> }
\seealso{
  \command{\link{carte.prop}}, \command{\link{carte.eff}},
  \command{\link{carte.qual}}, \command{\link{legend}},
  \command{\link{palette}}, \command{\link[RColorBrewer]{brewer.pal}},
  \command{\link{par}}, \command{\link{points}}
}
\keyword{hplot}
\keyword{spatial}