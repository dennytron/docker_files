FROM ubuntu:jammy

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update -y
RUN apt-get install software-properties-common -y

RUN add-apt-repository ppa:deadsnakes/ppa -y
RUN add-apt-repository ppa:ubuntugis/ubuntugis-unstable -y

RUN apt update -y

RUN apt-get install gdal-bin libgdal-dev -y
RUN apt-get install python3.11 python3.11-dev -y
RUN apt-get install python3-pip python3.11-distutils -y

RUN apt-get clean -y
