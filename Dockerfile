FROM debian:wheezy

MAINTAINER Decheng Zhang <killercentury@gmail.com>

ENV TERRAFORM_VERSION 0.6.0

RUN apt-get -y install wget unzip
RUN wget -P /tmp http://dl.bintray.com/mitchellh/terraform/terraform_${TERRAFORM_VERSION}_linux_amd64.zip
RUN unzip /tmp/terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/bin
RUN rm -rf /tmp/*

VOLUME ["/data"]
WORKDIR /data

ENTRYPOINT ["/usr/bin/terraform"]

CMD ["--help"]