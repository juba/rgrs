`theff` <-
function (tab, digits=2) {
  round(chisq.test(tab)$expected, digits)
}

