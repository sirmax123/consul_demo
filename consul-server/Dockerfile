FROM base
MAINTAINER Max Mazur <sirmax123@gmail.com>

COPY files/etc/consul/consul-server.json                  /etc/consul/consul-server.json
COPY files/etc/supervisor/conf.d/consul-server.conf /etc/supervisor/conf.d/consul-server.conf

CMD ["/start.sh"]
