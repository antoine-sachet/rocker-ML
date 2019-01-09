FROM rocker/verse:latest
LABEL maintainer="antoine.sachet@gmail.com" 

### Non exhaustive list of packages already installed in rocker/verse:
# tidyverse: dplyr, lubridate, magrittr, purrr, readr, tibble, rlang, ...
# some database support: DBI, RMySQL, RPostgreSQL, RSQLite, ...
# ggplot2, shiny
# knitr, rmarkdown (along with pandoc and tex)
# Dev tools: devtools, roxygen2, testthat, Rcpp
# Misc utilities: jsonlite, stringi, MASS

# Note: Install can be memory hungry. Retry with larger memory if you get
# g++: internal compiler error: Killed (program cc1plus)

# ggplot2 extensions
RUN install2.r -s --error \
GGally \
ggridges \
RColorBrewer \
scales \
viridis


# Misc utilities
RUN install2.r -s --error \
aws.s3 \
beepr \
doParallel \
DT \
foreach \
formattable \
here \
Hmisc \
jsonlite \
kableExtra \
MASS \
openxlsx \
RPushbullet

# Caret and some ML packages
RUN install2.r -s --error \
# ML framework
caret \
car \
ensembleR \
# metrics
MLmetrics \
pROC \
# Models
arm \
e1071 \
elasticnet \ 
fitdistrplus \
gam \
gamlss \
glmnet \
kernlab \
lme4 \
ltm \
mboost \
randomForest \ 
ranger \
survival \
# graph analysis
igraph