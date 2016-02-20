FROM node:4.3-slim
MAINTAINER Zehao Li <qft.gtr@gmail.com>
RUN apt-get update && npm update --global
RUN apt-get -y install g++ make git python2.7-minimal

RUN npm install --global yo gulp-cli bower
RUN npm install --global generator-webapp

RUN adduser --disabled-password --gecos "" yeoman
USER yeoman

CMD /bin/bash
