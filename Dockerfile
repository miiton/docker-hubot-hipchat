FROM       miiton/ubuntu:14.10
MAINTAINER miiton
ENV DEBIAN_FRONTEND noninteractive

RUN  apt-get update -y
RUN  apt-get install -y nodejs npm redis-server supervisor
RUN  mkdir -p /var/log/supervisor
RUN  ln -s /usr/bin/nodejs /usr/bin/node
RUN  npm install hubot-rss-reader
COPY . /src
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
RUN  cd /src && npm install .
CMD  ["/usr/bin/supervisord"]
