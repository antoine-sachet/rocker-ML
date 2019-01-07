FROM asachet/rocker-tidymodels:latest
LABEL maintainer="antoine.sachet@gmail.com" 

RUN install2.r -s --error \
tensorflow \
keras \
tfestimators

# Installing pip and virtualenv
# NOT installing pip via apt: 
## https://unix.stackexchange.com/questions/182308/install-python-pip-in-debian-wheezy
RUN wget https://bootstrap.pypa.io/get-pip.py  && python get-pip.py && python3 get-pip.py
RUN pip install virtualenv

# using littler to install TF and keras
RUN r -e "library(tensorflow) ; install_tensorflow()"

RUN r -e "library(keras) ; install_keras()"
