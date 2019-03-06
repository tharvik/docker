FROM ubuntu:latest

ARG YEAR=2018
ENV YEAR ${YEAR}

RUN apt update && apt install -y curl libwebkitgtk-1.0-0 openjdk-8-jre
RUN curl https://vaudtax-dl.vd.ch/vaudtax${YEAR}/telechargement/linux/VaudTax_${YEAR}.tar.gz | tar xvz

CMD VaudTax_${YEAR}-*/vaudtax-${YEAR}
