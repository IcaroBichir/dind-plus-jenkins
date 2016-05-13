FROM jenkins:2.3
MAINTAINER Icaro Bichir <icbichir1@gmail.com>

USER root
RUN apt-get update \
      && curl -fsSL https://get.docker.com/ | sh \
      && rm -rf /var/lib/apt/lists/*

RUN curl -L https://github.com/docker/compose/releases/download/1.7.0/docker-compose-`uname -s`-`uname -m` > /usr/bin/docker-compose \
    && chmod +x /usr/bin/docker-compose

RUN usermod -aG docker jenkins
RUN service docker start

USER jenkins