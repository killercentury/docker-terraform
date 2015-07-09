FROM alpine
MAINTAINER Decheng Zhang <killercentury@gmail.com>

ENV TERRAFORM_VERSION 0.6.0

RUN apk add --update curl && rm -rf /var/cache/apk/*
RUN curl -o /tmp/terraform.zip -L https://dl.bintray.com/mitchellh/terraform/terraform_${TERRAFORM_VERSION}_linux_amd64.zip
RUN unzip /tmp/terraform.zip -d /usr/local/bin
RUN rm -rf /tmp/*