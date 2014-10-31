FROM ubuntu

MAINTAINER Tomokazu Kiyohara <tomokazu.kiyohara@gmail.com>

RUN apt-get update

### supervisor
RUN apt-get -y install supervisor
RUN mkdir -p /var/log/supervisor
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD [ "/usr/bin/supervisord" ]
