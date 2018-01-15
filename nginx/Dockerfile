FROM base
MAINTAINER Max Mazur <sirmax123@gmail.com>

COPY files/etc/supervisor/conf.d/consul-agent.conf /etc/supervisor/conf.d/consul-agent.conf
COPY files/etc/supervisor/conf.d/nginx.conf        /etc/supervisor/conf.d/nginx.conf
COPY files/nginx-consul-templatye.hlc              /nginx-consul-templatye.hlc
COPY files/php-fpm.conf.ctpl                       /php-fpm.conf.ctpl
COPY files/etc/nginx/conf.d/default.conf           /etc/nginx/conf.d/default.conf

CMD ["/start.sh"]
