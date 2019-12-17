# R docker images for statistical modelling

The [rocker project](https://github.com/rocker-org/rocker) provides a fantastic stack of docker images built from debian. 
This repository extends the rocker images to provide machine learning / statistical modelling capabilities.

### FROM rocker/verse

All these docker images are based on `rocker/verse` [![](https://images.microbadger.com/badges/image/rocker/verse.svg)](https://microbadger.com/images/rocker/verse "Get your own image badge on microbadger.com") which already contains:
- r-base
- rstudio
- tidyverse
- shiny
- publishing tools (pandoc, tex)

Version-specific branches are based on the relevant `rocker/verse` version (e.g. `asachet/rocker-ml:3.6.1` is based on `rocker/verse:3.6.1` which uses R 3.6.1).

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

### rocker-keras

[![](https://images.microbadger.com/badges/version/asachet/rocker-keras.svg)](https://microbadger.com/images/asachet/rocker-keras "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/asachet/rocker-keras.svg)](https://microbadger.com/images/asachet/rocker-keras "Get your own image badge on microbadger.com")

The [rocker-keras image](https://hub.docker.com/r/asachet/rocker-keras) adds to `rocker/tidymodels`:
- TensorFlow (latest **CPU** version) and Keras (latest version)
- R packages `tensorflow`, `keras` and `tfestimators`
 
 See https://tensorflow.rstudio.com/keras/ for more info.
