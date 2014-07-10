FROM ubuntu:14.04
MAINTAINER Homer Quan "support@homerquan.com"
RUN apt-get update && apt-get clean
RUN apt-get install -q -y ssh nodejs npm git && apt-get clean
RUN ln -s /usr/bin/nodejs /usr/bin/node
RNN npm i nodemon node-inspector -g
RUN adduser --disabled-password --gecos "" dev
RUN adduser dev sudo
RUN echo "dev:password"|chpasswd
RUN export HOME=home/dev/
USER dev
