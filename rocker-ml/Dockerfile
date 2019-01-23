FROM rocker/verse:latest
LABEL maintainer="antoine.sachet@gmail.com" \
org.label-schema.vcs-url="https://github.com/antoine-sachet/rocker-ML"

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
config \
doParallel \
DT \
foreach \
formattable \
glue \
here \
Hmisc \
httr \
jsonlite \
kableExtra \
logging \
MASS \
microbenchmark \
openxlsx \
pkgdown \
rlang \
RPushbullet \
roxygen2 \
stringr \
styler \
testthat \
usethis 


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
C50 \
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
rpart \
survival \
# graph analysis
igraph