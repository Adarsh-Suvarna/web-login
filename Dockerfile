FROM ubuntu

MAINTAINER adarshasuvarna

WORKDIR /usr/apps/hello-docker/

RUN apt-get -y update \
    && apt-get install -y nodejs \ 
    && RUN apt-get install -y npm \
    && RUN npm install -g http-server

ADD . .

EXPOSE 8080

# ADD index.html /usr/apps/hello-docker/index.html

CMD ["http-server", "-s"]
