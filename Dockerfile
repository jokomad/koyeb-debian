#FROM --platform=linux/386 jlesage/baseimage-gui:debian-11-v4.5
FROM --platform=linux/amd64 jlesage/baseimage-gui:debian-11-v4.5








RUN apt-get update
RUN apt-get install chromium -y

COPY startapp.sh /startapp.sh
RUN chmod +x /startapp.sh

COPY 1.tar.gz.partaa /home/j/1.tar.gz.partaa
COPY 1.tar.gz.partab /home/j/1.tar.gz.partab

RUN cat /home/j/1.tar.gz.parta* >/home/j/1.tar.gz
RUN cd /home/j && tar -xf /home/j/1.tar.gz 	
