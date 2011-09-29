`residus` <-
function (tab, digits=2) {
  round(chisq.test(tab)$residuals, digits)
}

