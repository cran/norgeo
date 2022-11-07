## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----api1, eval=FALSE---------------------------------------------------------
#  library(norgeo)
#  dt <- get_code("kommune", from = 2015, to = 2021)
#  # only current geo code
#  dt <- get_code("kommune", from = 2021)

## ----api2, eval=FALSE---------------------------------------------------------
#  dtc <- get_change("kommune", from = 2015, to = 2021)

## ----api3, eval=FALSE---------------------------------------------------------
#  dtt <- track_change("kommune", from = 2015, to = 2021)

