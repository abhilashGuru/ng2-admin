# Version 2.0.0-alpha.0

FROM node:6

MAINTAINER Akveo <contact@akveo.com>

WORKDIR /usr/src/app
COPY . /usr/src/app

RUN apt-get install curl
RUN apt-get install git

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN apt-get install yarn

RUN mkdir -p /usr/src/app
RUN yarn

EXPOSE 4200


