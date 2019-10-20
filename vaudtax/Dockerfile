FROM ubuntu:latest

ARG YEAR=2018
ENV YEAR ${YEAR}

RUN apt update && apt install -y curl libgnome-2-0 libgnomeui-0 libgnomevfs2-0 libwebkitgtk-1.0-0 openjdk-8-jre
RUN curl https://vaudtax-dl.vd.ch/vaudtax${YEAR}/telechargement/linux/64bit/VaudTax_${YEAR}.tar.gz | tar xvz

CMD VaudTax_${YEAR}-*/vaudtax-${YEAR}
