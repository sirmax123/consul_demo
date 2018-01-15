FROM base
MAINTAINER Max Mazur <sirmax123@gmail.com>

COPY files/etc/supervisor/conf.d/consul-agent.conf /etc/supervisor/conf.d/consul-agent.conf
COPY files/etc/supervisor/conf.d/php-fpm.conf      /etc/supervisor/conf.d/php-fpm.conf
COPY files/etc/php/7.1/fpm/pool.d/www.conf         /etc/php/7.1/fpm/pool.d/www.conf
COPY files/etc/php/7.1/fpm/php-fpm.conf            /etc/php/7.1/fpm/php-fpm.conf
COPY files/check_php_fpm.sh                        /check_php_fpm.sh
COPY files/i.php                                   /i.php


CMD ["/start.sh"]
