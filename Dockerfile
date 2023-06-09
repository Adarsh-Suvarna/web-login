FROM ubuntu

MAINTAINER adarshasuvarna

WORKDIR /usr/apps/hello-docker/

RUN apt-get -y update
RUN apt-get install -y nodejs
RUN apt-get install -y npm
RUN npm install -g http-server

ADD . /usr/apps/hello-docker/

EXPOSE 8080

CMD ["http-server", "-s"]
