FROM asachet/rocker-tidymodels:latest
LABEL maintainer="antoine.sachet@gmail.com" 

RUN install2.r -s --error \
tensorflow \
keras \
tfestimators

# using littler to install TF and keras
RUN r -e "library(tensorflow) ; install_tensorflow()"

RUN r -e "library(keras) ; install_keras()"
