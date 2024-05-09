# Base image https://hub.docker.com/u/rocker/
FROM rocker/tidyverse:latest

RUN mkdir -p /home
RUN mkdir -p /gis
RUN mkdir -p /output

WORKDIR /home

COPY install_packages.R /home/
COPY stg4_scraper.R /home/

## install R-packages
RUN Rscript install_packages.R

##run the script

CMD Rscript stg4_scraper.R