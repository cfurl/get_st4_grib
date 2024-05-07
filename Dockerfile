# Base image https://hub.docker.com/u/rocker/
FROM rocker/tidyverse:latest

WORKDIR /home

COPY install_packages.R /install_packages.R
COPY /stg4_scraper.R /stg4_scraper.R

## install R-packages
RUN Rscript /install_packages.R

##run the script

CMD Rscript /stg4_scraper.R