FROM rocker/verse:latest
LABEL maintainer="antoine.sachet@gmail.com" 

### Non exhaustive list of packages already installed in rocker/verse:
# tidyverse: dplyr, lubridate, magrittr, purrr, readr, tibble, rlang, ...
# some database support: DBI, RMySQL, RPostgreSQL, RSQLite, ...
# ggplot2, shiny
# knitr, rmarkdown (along with pandoc and tex)
# Dev tools: devtools, roxygen2, testthat, Rcpp
# Misc utilities: jsonlite, stringi, MASS

# ggplot2 extensions
RUN install2.r -s --error \
scales \
RColorBrewer \
viridis \
GGally

# Misc utilities
RUN install2.r -s --error \
Hmisc \
foreach \
doParallel \
openxlsx \
DT

# Caret and some ML packages
RUN install2.r -s --error \
caret \
car \
ensembleR \
ranger \
randomForest \ 
elasticnet \ 
e1071 \
lme4 \
gam \
gamlss \
mboost \
kernlab \
pROC \
MLmetrics

# Graph analysis
RUN install2.r -s --error igraph

# The future of ML with R? Work in progress but useful to have.
RUN install2.r -s --error tidymodels

