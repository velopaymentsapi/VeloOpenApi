FROM node:alpine

RUN mkdir /home/node/.ssh

RUN chmod -R 700 /home/node/.ssh &&\
  chown -R node:node /home/node &&\
  apk add -U curl git openssh alpine-sdk yarn python

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app
