FROM asachet/rocker-ml:3.6.1
LABEL maintainer="antoine.sachet@gmail.com"  \
org.label-schema.vcs-url="https://github.com/antoine-sachet/rocker-ML"

# Using clang to compile Stan
# Using the default g++ causes memory issues
RUN apt-get update \
&& apt-get install -y --no-install-recommends \
clang

# install_stan.R creates a makevars file and installs rstan from source
# following the instructions at https://github.com/stan-dev/rstan/wiki/Installing-RStan-on-Linux
COPY install_stan.R install_stan.R
RUN ["r", "install_stan.R"]

# Installing the rest 
RUN install2.r -s --error \
bayesplot \
brms \
coda \
loo \
projpred \
rstanarm \
rstantools \ 
shinystan \
tidybayes

