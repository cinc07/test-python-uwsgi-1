FROM ubuntu:latest
MAINTAINER Jason Chen

RUN apt-get -q update
RUN apt-get install -yqq python python-dev python-distribute python-pip python-virtualenv
RUN apt-get install -yqq build-essential git

RUN mkdir -p /var/www/app
ADD run.sh /tmp/run.sh
RUN chmod u+x /tmp/run.sh
EXPOSE 9090
WORKDIR /var/www/app/
ENTRYPOINT /tmp/run.sh
