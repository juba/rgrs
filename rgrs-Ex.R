pkgname <- "rgrs"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('rgrs')

assign(".oldSearch", search(), pos = 'CheckExEnv')
cleanEx()
nameEx("Cartographie")
### * Cartographie

flush(stderr()); flush(stdout())

### Name: Cartographie
### Title: Représentations cartographiques simples
### Aliases: carte.prop carte.eff carte.qual carte.labels
### Keywords: hplot spatial

### ** Examples

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




cleanEx()
nameEx("Ponderations")
### * Ponderations

flush(stderr()); flush(stdout())

### Name: Pondérations
### Title: Traitement de données pondérées
### Aliases: wtd.mean wtd.var wtd.table
### Keywords: univar

### ** Examples


data(hdv2003)

mean(hdv2003$age)
wtd.mean(hdv2003$age, weights=hdv2003$poids)

table(hdv2003$sexe)
wtd.table(hdv2003$sexe, weights=hdv2003$poids)
wtd.table(hdv2003$sexe, weights=hdv2003$poids, normwt=TRUE)

table(hdv2003$sexe, hdv2003$hard.rock)
wtd.table(hdv2003$sexe, hdv2003$hard.rock, weights=hdv2003$poids)




cleanEx()
nameEx("Profils")
### * Profils

flush(stderr()); flush(stdout())

### Name: Profils
### Title: Fonctions de calcul de pourcentages à partir d'un tableau croisé
### Aliases: lprop cprop prop thprop theff residus
### Keywords: univar

### ** Examples

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



cleanEx()
nameEx("copie")
### * copie

flush(stderr()); flush(stdout())

### Name: copie
### Title: Export d'un objet au format HTML
### Aliases: copie copie.default
### Keywords: connection

### ** Examples

data(iris)
tab <- table(cut(iris$Sepal.Length,8),cut(iris$Sepal.Width,4))
## Not run: copie(tab)



cleanEx()
nameEx("copie.proptab")
### * copie.proptab

flush(stderr()); flush(stdout())

### Name: copie.proptab
### Title: Export d'un objet proptab au format HTML
### Aliases: copie.proptab
### Keywords: connection

### ** Examples

data(iris)
tab <- table(cut(iris$Sepal.Length,8),cut(iris$Sepal.Width,4))
ptab <- lprop(tab, percent=TRUE)
## Not run: copie(ptab)



cleanEx()
nameEx("cramer.v")
### * cramer.v

flush(stderr()); flush(stdout())

### Name: cramer.v
### Title: Calcule le V de Cramer d'un tableau croisé
### Aliases: cramer.v
### Keywords: univar

### ** Examples

v1 <- factor(round(runif(500,1,4)))
v2 <- factor(round(runif(500,1,3)))

tab <- table(v1,v2)
print(tab)
cramer.v(tab)



cleanEx()
nameEx("freq")
### * freq

flush(stderr()); flush(stdout())

### Name: freq
### Title: Retourne le tri à plat d'une variable
### Aliases: freq
### Keywords: univar

### ** Examples

v <- c(round(runif(230,1,5)), NA)
freq(v)
freq(v, cum=TRUE)
freq(v, exclude=NA)
freq(v, exclude=c(1,2,NA))
freq(v, digits=3)
freq(v, total=TRUE)
freq(v, sort="inc")
tab <- table(v)
freq(tab)



cleanEx()
nameEx("genere.tableau")
### * genere.tableau

flush(stderr()); flush(stdout())

### Name: genere.tableau
### Title: Génère une représentation ODF d'un objet
### Aliases: genere.tableau
### Keywords: connection

### ** Examples

## Not run:
## Not run: 
##D data(iris)
##D tab <- table(iris$Species)
##D genere.tableau(tab)
## End(Not run)



cleanEx()
nameEx("mls.export")
### * mls.export

flush(stderr()); flush(stdout())

### Name: mls.export
### Title: Export de données vers Modalisa
### Aliases: mls.export
### Keywords: file utilities

### ** Examples

## Not run:
## Not run: mls.export(mydf, "export_modalisa.txt")



cleanEx()
nameEx("mls.import")
### * mls.import

flush(stderr()); flush(stdout())

### Name: mls.import
### Title: Import de fichiers Modalisa
### Aliases: mls.import
### Keywords: file utilities

### ** Examples

## Not run:
## Not run: mydf <- mls.import("export_modalisa.TXT")



cleanEx()
nameEx("mls.multis")
### * mls.multis

flush(stderr()); flush(stdout())

### Name: Questions multiples Modalisa
### Title: Traitement des questions à réponses multiples importées depuis
###   Modalisa.
### Aliases: mls.table.multi mls.eclate.multi mls.eclate.ordo
### Keywords: manip utilities

### ** Examples

## Not run:
## Not run: 
##D mydf <- mls.import("export_modalisa.TXT")
##D mls.table.multi(mydf$couleurs)
##D test <- cbind(test,mls.eclate.multi(mydf$couleurs, vname="couleur"))
## End(Not run)



cleanEx()
nameEx("print.proptab")
### * print.proptab

flush(stderr()); flush(stdout())

### Name: print.proptab
### Title: Affiche un tableau contenant des proportions
### Aliases: print.proptab
### Keywords: univar

### ** Examples

tab <- table(x=round(runif(100,1,3)),y=round(runif(100,1,5)))
ptab <- lprop(tab, digits=1, percent=TRUE)
print(ptab)
print(ptab, digits=2, percent=FALSE)



cleanEx()
nameEx("quant.cut")
### * quant.cut

flush(stderr()); flush(stdout())

### Name: quant.cut
### Title: Transforme une variable quantitative en variable qualitative
### Aliases: quant.cut
### Keywords: manip

### ** Examples

data(iris)
sepal.width3cl <- quant.cut(iris$Sepal.Width,3)
freq(sepal.width3cl)



cleanEx()
nameEx("renomme.variable")
### * renomme.variable

flush(stderr()); flush(stdout())

### Name: renomme.variable
### Title: Renomme une colonne d'un tableau de données
### Aliases: renomme.variable
### Keywords: manip

### ** Examples

data(iris)
str(iris)
iris <- renomme.variable(iris, "Species", "especes")
str(iris)



### * <FOOTER>
###
cat("Time elapsed: ", proc.time() - get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
