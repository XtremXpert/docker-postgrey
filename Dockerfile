FROM debian:latest

MAINTAINER Benoît "XtremXpert" Vézina  <xtremxpert@xtremxpert.com>

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
 && apt-get install -y postgrey \
 && rm -rf /var/lib/apt/lists/*

CMD ["postgrey", "--inet", "0.0.0.0:10023", "--delay", "50", "--user", "postgrey", "--group", "postgrey"]

EXPOSE 10023/tcp
VOLUME /var/lib/postgrey
