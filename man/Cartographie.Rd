\encoding{UTF-8}
\name{Cartographie}
\alias{carte.prop}
\alias{carte.eff}
\alias{carte.qual}
\alias{carte.labels}
\title{ Représentations cartographiques simples }
\description{
  Fonctions permettant la représentation cartographique simple de
  données de type proportions (\command{carte.prop}), effectifs
  (\command{carte.eff}) ou qualitatif (\command{carte.qual}).
}
\usage{
carte.prop(sp, data, varname, sp.key="id", data.key="id", diverg=FALSE,
           diverg.zero=0, nbcuts=6, at=NULL, at.lim=FALSE, main="",
           sub=NULL, posleg="topleft", palette.pos="Reds",
           palette.neg="Blues", palette=NULL, leg.options=NULL, ...)

carte.eff(sp, data, varname, sp.key="id", data.key="id", nbcuts=4,
          at=NULL, main="", sub=NULL, posleg="topleft", col.bg="red",
          col.border="white", cex=5, pch=21, plot.polygons=TRUE,
          leg.options=NULL, ...)

carte.qual(sp, data, varname, sp.key="id", data.key="id", main="", sub=NULL,
           posleg="topleft",  palette.qual="Set3", palette=NULL,
           leg.options=NULL, ...)

carte.labels(sp, labels, coords=NULL, cex=1, font=2, col="black",
             outline=FALSE, outline.decal=1, outline.col="white")
}
\arguments{
  
  \item{sp}{objet spatial, de classe \command{SpatialPolygonsDataFrame}.}
  \item{data}{tableau de données contenant la variable à représenter.}
  \item{varname}{nom de la variable à représenter (sous forme de chaîne
    de caractère).}
  \item{sp.key}{nom de la variable de jointure de l'objet spatial.}
  \item{data.key}{nom de la variable de jointure du tableau de données.}
  \item{diverg}{si TRUE, les données comportent à la fois des valeurs
    positives et négatives, à représenter dans des schémas de couleur
    différents.}
  \item{diverg.zero}{si diverg vaut TRUE, valeur qui définit la limite
    pour laquelle les valeurs sont positives ou négatives (0 en général
    par défaut, mais on peut la positionner à 1 pour une carte
    représentant un ratio par exemple).}
  \item{nbcuts}{nombre de classes de valeurs pour la légende
    (\command{carte.eff}) et pour les couleurs (\command{carte.prop}).}
  \item{at}{bornes des classes de valeurs pour la légende
    (\command{carte.eff}) et pour les couleurs (\command{carte.prop}).}
  \item{at.lim}{si TRUE, les valeurs minimum et maximum sont ajoutées si
    besoin aux intervalles donnés via l'option \command{at} pour
    \command{carte.prop}.}
  \item{main}{titre de la carte.}
  \item{sub}{sous-titre de la carte.}
  \item{posleg}{position de la légende, à indiquer de la même manière
    que pour \command{legend}. Si l'argument vaut "none" ou NULL, aucune
    légende n'est affichée.}
  \item{col.bg}{couleur des symboles pour \command{carte.eff}.}
  \item{col.border}{couleur de la bordure des symboles pour
    \command{carte.eff}.}
  \item{cex}{facteur d'agrandissement des symboles (\command{carte.eff}) ou
    des labels (\command{carte.labels}).}
  \item{pch}{type de symbole pour \command{carte.eff}.}
  \item{plot.polygons}{si FALSE, le contenu de l'objet spatial
    (polygones) n'est pas affiché.}
  \item{palette.pos}{nom de la palette à utiliser pour les classes de
    valeurs positives. Chaîne de caractère transmise à RColorBrewer (voir   
    Details).}
  \item{palette.neg}{nom de la palette à utiliser pour les classes de valeurs
    négatives. Chaîne de caractère transmise à RColorBrewer (voir
    Details).}
  \item{palette.qual}{nom de la palette à utiliser pour les
    catégories. Chaîne de caractère transmise à RColorBrewer (voir
    Details).}
  \item{palette}{palette de couleur spécifiée manuellement.}
  \item{labels}{vecteur de chaines de caractère contenant les labels à écrire.}  
  \item{coords}{coordonnées de positionnement des labels. Si NULL, les
    coordonnées sont calculées en fonction de la forme de chaque polygone.}
  \item{col}{couleur des labels.}
  \item{font}{type de police utilisée pour les labels. Voir \command{\link{par}}.}
  \item{outline}{si TRUE, une bordure est affichée autour des labels.} 
  \item{outline.decal}{décalage à utiliser pour les bordures de labels.}
  \item{outline.col}{couleur pour les bordures de labels.}   
  \item{...}{paramètres supplémentaires passés à \command{spplot}.}
  \item{leg.options}{Liste de paramètres supplémentaires passée à la
    fonction d'affichage de la légende correspondante.}
}
\details{
  Pour la manière de spécifier des palettes à RColorBrewer, on pourra
  utiliser l'outil interactif à l'adresse http://colorbrewer.org, les
  noms de palette sont les mêmes. Si vous utilisez une des palettes du
  site, les auteurs du projet apprécient que celui-ci soit cité.

  Si le nombre de classes de valeurs est trop élevé, il se peut que la
  palette spécifiée ne dispose pas de suffisamment de couleurs. Il faut
  alors soit réduire le nombre de classes, soit choisir une autre
  palette, soit spécifier une palette manuellement.

  Les arguments supplémentaires passés à la fonction d'affichage de la
  légende doivent l'être sous la forme d'une liste, par exemple
  \command{leg.options=list(na.string="Manquant")}.
}
\value{
  Affiche la carte et la légende correspondantes. Ne retourne pas de
  valeur particulière.
}
\author{ Julien Barnier <julien.barnier@ens-lyon.fr>, Joël Gombin <joel.gombin@gmail.com> }
\seealso{  \command{\link{carte.prop.legende}},
  \command{\link{carte.eff.legende}},
  \command{\link{carte.qual.legende}}, \command{\link[sp]{spplot}}, \command{\link{legend}},
  \command{\link[RColorBrewer]{brewer.pal}}, \command{\link{palette}}, \command{\link{par}} }
\examples{
data(lyon)
data(rp99)

require(sp)
plot(lyon)

carte.prop(lyon, rp99, "tx.chom", sp.key="DepCom", data.key="code")
carte.prop(lyon, rp99, "tx.chom", sp.key="DepCom", data.key="code",main="Taux de chomage 1999", sub="Source : INSEE, RP 1999", palette.pos="RdPu", posleg="topright")

carte.eff(lyon, rp99, "pop.act", sp.key="DepCom", data.key="code")
carte.eff(lyon, rp99, "pop.act", sp.key="DepCom", data.key="code", main="Population active en 1999", sub="Source : INSEE, RP 1999", pch=23, cex=10, col.bg="blue",col.border="yellow", posleg="topright")

rp99$qual <- sample(c("A","B","C","D","E"), nrow(rp99),replace=TRUE)
carte.qual(lyon, rp99, "qual", sp.key="DepCom", data.key="code", main="Types d'arrondissements", sub="Source : aleatoire", posleg="bottomright", palette.qual="Set2")

carte.prop(lyon, rp99, "tx.chom", sp.key="DepCom", data.key="code", main="Taux de chomage 1999")
carte.labels(lyon, lyon@data$Nom_Com, outline=TRUE)

}
\keyword{hplot}
\keyword{spatial}