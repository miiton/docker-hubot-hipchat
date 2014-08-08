FROM	ubuntu:14.04
RUN		apt-get update -y
RUN		apt-get install -y nodejs
RUN		apt-get install -y npm 
RUN		apt-get install -y redis-server
RUN		apt-get install -y supervisor
RUN 	mkdir -p /var/log/supervisor
RUN		ln -s /usr/bin/nodejs /usr/bin/node
COPY 	. /src
COPY	supervisord.conf /etc/supervisor/conf.d/supervisord.conf
RUN 	cd /src && npm install .
ENV     HUBOT_HIPCHAT_JID *******@chat.hipchat.com
ENV     HUBOT_HIPCHAT_PASSWORD ********
CMD     ["/usr/bin/supervisord"]