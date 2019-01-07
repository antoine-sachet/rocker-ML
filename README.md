# R docker images for statistical modelling

The [rocker project](https://github.com/rocker-org/rocker) provides a fantastic stack of docker images built from debian. 
This repository extends the rocker images to provide machine learning / statistical modelling capabilities.

### FROM rocker/verse

All these docker images are based on `rocker/verse:latest` [![](https://images.microbadger.com/badges/image/rocker/verse.svg)](https://microbadger.com/images/rocker/verse "Get your own image badge on microbadger.com") which already contains:
- r-base
- rstudio
- tidyverse
- shiny
- publishing tools (pandoc, tex)

### rocker-ml 

[![](https://images.microbadger.com/badges/version/asachet/rocker-ml.svg)](https://microbadger.com/images/asachet/rocker-ml "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/asachet/rocker-ml.svg)](https://microbadger.com/images/asachet/rocker-ml "Get your own image badge on microbadger.com")

The [rocker-ml image](https://hub.docker.com/r/asachet/rocker-ml) adds to rocker/verse:
  - `ggplot2` utilities such as `scales`, `ggridges`, `GGally`, `RColorBrewer`, `Viridis`
  - Misc tools such as `foreach`, `Hmisc`, `doParallel`, `openxlsx`
  - Modelling tools:
    * `caret` and related (`ensembleR`, `MLmetrics`)
    * statistical utilities like `MASS`, `car`, `fitdistrplus`
    * A large number of modelling packages including `gam`, `lme4`, `e1071`, `kernlab`, `survival`, `elasticnet`, `randomForest`, `ranger`, ...
    * Open the dockerfile to see the complete list.

### rocker-stan

[![](https://images.microbadger.com/badges/version/asachet/rocker-stan.svg)](https://microbadger.com/images/asachet/rocker-stan "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/asachet/rocker-stan.svg)](https://microbadger.com/images/asachet/rocker-stan "Get your own image badge on microbadger.com")

The [rocker-stan image](https://hub.docker.com/r/asachet/rocker-stan) adds [Stan](https://mc-stan.org/) to `rocker-ml`:
  - `rstan`, `rstantools`, `rstanarm`, `shinystan`, `bayesplot`, `brms`, `tidybayes`

### rocker-tidymodels

[![](https://images.microbadger.com/badges/version/asachet/rocker-tidymodels.svg)](https://microbadger.com/images/asachet/rocker-tidymodels "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/asachet/rocker-tidymodels.svg)](https://microbadger.com/images/asachet/rocker-tidymodels "Get your own image badge on microbadger.com")

The [rocker-tidymodels image](https://hub.docker.com/r/asachet/rocker-tidymodels) adds [`tidymodels`](https://github.com/tidymodels/tidymodels) to `rocker-stan`. 
Note that `rstanarm` is a requirement for `tidyposterior` hence the stack.

## Future development

* `rocker-jags` will add [JAGS](http://mcmc-jags.sourceforge.net/) to `rocker-ml`
* `rocker-bayesian` will add Stan, JAGS and OpenBUGS to `rocker-ml`
