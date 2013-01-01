## Data manipulation for neighborhood surrounds
## Run this script to recreate all datasets used in this project
## Note: also uses canhts.csv created in the boles project
source("functions/functions-datatrans.R")

## read master data
source("data/data-prep/read-moose.R")

## add/remove columns, annualize growth, rename columns if they changed
## creates "data/data/moose-wide.csv"
source("data/data-prep/clean-moose.R")

## make long version of data
## creates "data/data/moose-long.csv"
source("data/data-trans/make-long-moose.R")

## add canopy heights/change time 10 to time 100 for linearity in path graphs
## creates "data/data/dynamicallometry/moose-long-canopies.csv"
source("dynamicallometry/add-canopy-height.R")
