## Testing platform for neighborhood MLE models
source("functions/functions.R")
source("functions/functions-growth.R")
source("neighborhoods/neighborhood-models.R")

## Data
dat = read.csv("data/data/long-bc-derived.csv")

## Parameters
sr = c(6)
spec = "FD"
ind.var = "priorbv" ## will be used in neighborhood calculations
dep.var = "rgrsisdp"
currentmodel = "simplest"
method = "Nelder-Mead"
maxit = 100000
realdist = TRUE ## TRUE for BC data where exact coordinates are known

## Make sure starting parameters are defined in parameters.csv
## If necessary, create new starting parameters:
## pars <- read.csv("parameters.csv")
## rowcopy = pars[83:86,]
## rowcopy$model <- "simplest"
## rowcopy$mdep.var <- "rgrplot"
## pars <- rbind(pars, rowcopy)
## write.csv(pars, "parameters.csv", row.names =FALSE)
pars <- read.csv("data/data/parameters/parameters.csv")
ps <- get.params(sr,spec,ind.var,dep.var,currentmodel = currentmodel)

fit <- fit.MLE.models(dat=dat,sr=sr,spec=spec,ind.var=ind.var,dep.var=dep.var,
  models=currentmodel,method=method,
  realdist = realdist, maxit = maxit)


