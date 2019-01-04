# Following instructions from 
# https://github.com/stan-dev/rstan/wiki/Installing-RStan-on-Linux

print("Running install_stan.R")

## Creating /home/rstudio/.R/Makevars

dotR <- file.path(Sys.getenv("HOME"), ".R")
if (!file.exists(dotR)) dir.create(dotR)
M <- file.path(dotR, "Makevars")
if (!file.exists(M)) file.create(M)
cat("\nCXX14FLAGS=-O3 -march=native -mtune=native -fPIC",
    "CXX14=clang++",
    file = M, sep = "\n", append = TRUE)

## Installing rstan

install.packages("rstan", type = "source")