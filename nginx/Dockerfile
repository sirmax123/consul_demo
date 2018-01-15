FROM base
MAINTAINER Max Mazur <sirmax123@gmail.com>

COPY files/etc/supervisor/conf.d/consul-agent.conf /etc/supervisor/conf.d/consul-agent.conf
COPY files/etc/supervisor/conf.d/nginx.conf        /etc/supervisor/conf.d/nginx.conf


CMD ["/start.sh"]
