#FROM --platform=linux/386 jlesage/baseimage-gui:debian-11-v4.5
#FROM --platform=linux/amd64 jlesage/baseimage-gui:debian-11-v4.5
#FROM jlesage/baseimage-gui:alpine-3.18-v4.5.2
#RUN add-pkg chromium
#RUN add-pkg file-roller
#RUN apt-get update
#RUN apt-get install chromium -y
#COPY startapp.sh /startapp.sh
#RUN chmod +x /startapp.sh
#COPY 1.tar.gz.parttaa /config/1.tar.gz.parttaa
#COPY 1.tar.gz.parttab /config/1.tar.gz.parttab
#RUN cat /config/1.tar.gz.partta* >/config/1.tar.gz
#RUN mkdir /config/1
#RUN cd /config && tar -xf /config/1.tar.gz 

FROM ghcr.io/linuxserver/baseimage-kasmvnc:alpine318

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="thelamer"

# title
ENV TITLE=Chromium

RUN \
  echo "**** install packages ****" && \
  apk add --no-cache \
    chromium && \
  echo "**** cleanup ****" && \
  rm -rf \
    /tmp/*

RUN apk add sudo

# add local files
COPY /root /

# ports and volumes
EXPOSE 3000

#VOLUME /config
COPY 1.tar.gz.parttaa /config/1.tar.gz.parttaa
COPY 1.tar.gz.parttab /config/1.tar.gz.parttab
RUN cat /config/1.tar.gz.partta* >/config/1.tar.gz
RUN mkdir /config/1
RUN cd /config && tar -xf /config/1.tar.gz 

#RUN apk add file-roller
