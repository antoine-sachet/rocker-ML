# R docker images for statistical modelling

The [rocker project](https://github.com/rocker-org/rocker) provides a fantastic stack of docker images built from debian. 
This repository extends the rocker images to provide machine learning / statistical modelling capabilities.

### FROM rocker/verse

The base docker image is rocker/verse:latest which already contains:
- r-base
- rstudio
- tidyverse
- shiny
- publishing tools (pandoc, tex)

### rocker-ml 

The [rocker-ml image](https://hub.docker.com/r/asachet/rocker-ml) adds to rocker/verse:
  - `ggplot2` utilities such as `scales`, `ggridges`, `GGally`, `RColorBrewer`, `Viridis`
  - Misc tools such as `foreach`, `Hmisc`, `doParallel`, `openxlsx`
  - Modelling tools:
    * `caret` and related (`ensembleR`, `MLmetrics`)
    * statistical utilities like `MASS`, `car`, `fitdistrplus`
    * A large number of modelling packages including `gam`, `lme4`, `e1071`, `kernlab`, `survival`, `elasticnet`, `randomForest`, `ranger`, ...
    * Open the dockerfile to see the complete list.

### rocker-stan

The [rocker-stan image](https://hub.docker.com/r/asachet/rocker-stan) adds [Stan](https://mc-stan.org/) to `rocker-ml`:
  - `rstan`, `rstantools`, `rstanarm`, `shinystan`, `bayesplot`, `brms`, `tidybayes`

### rocker-tidymodels

The [rocker-tidymodels image](https://hub.docker.com/r/asachet/rocker-tidymodels) adds [`tidymodels`](https://github.com/tidymodels/tidymodels) to `rocker-stan`. 
Note that `rstanarm` is a requirement for `tidyposterior` hence the stack.

## Future development

* `rocker-jags` will add (JAGS)[http://mcmc-jags.sourceforge.net/] to `rocker-ml`:
  - work in progress

* `rocker-bayesian` adds Stan, JAGS and OpenBUGS to `rocker-ml`
