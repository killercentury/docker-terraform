FROM progrium/busybox

MAINTAINER Decheng Zhang <killercentury@gmail.com>

ENV TERRAFORM_VERSION 0.6.0

RUN apk add --update openssl && rm -rf /var/cache/apk/*
RUN wget -P /tmp http://dl.bintray.com/mitchellh/terraform/terraform_${TERRAFORM_VERSION}_linux_amd64.zip
RUN unzip /tmp/terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/bin
RUN rm -rf /tmp/*

VOLUME ["/data"]
WORKDIR /data

ENTRYPOINT ["/usr/bin/terraform"]

CMD ["--help"]