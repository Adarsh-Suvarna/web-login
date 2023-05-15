FROM alpine:3.7

MAINTAINER adarshasuvarna

WORKDIR /usr/apps/hello-docker/

RUN apk add --update bash
RUN apk add nodejs
RUN apk add --update nodejs nodejs-npm
RUN npm install -g http-server

ADD . /usr/apps/hello-docker/

CMD ["http-server", "-s"]
