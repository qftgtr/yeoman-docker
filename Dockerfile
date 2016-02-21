# docker build -t yeoman/skeleton .

FROM node:4.3-slim
MAINTAINER Zehao Li <qft.gtr@gmail.com>

RUN apt-get update && npm update --global
RUN apt-get -y install g++ make git python

RUN npm install --global node-gyp yo gulp-cli bower
RUN npm install --global generator-webapp

RUN useradd -u 1000 yeoman \
  && mkdir -p /home/yeoman \
  && chown -R yeoman /home/yeoman

USER yeoman
WORKDIR /home/yeoman

CMD ["/bin/bash"]
EXPOSE 3001 9000