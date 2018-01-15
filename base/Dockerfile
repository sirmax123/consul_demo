FROM ubuntu:16.04
MAINTAINER Max Mazur <sirmax123@gmail.com>
RUN \
  apt-get update && \
   echo "deb http://nginx.org/packages/ubuntu/ xenial nginx" >> /etc/apt/sources.list.d/nginx.list && \
  echo "deb-src http://nginx.org/packages/ubuntu/ xenial nginx"  >> /etc/apt/sources.list.d/nginx.list && \
  apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ABF5BD827BD9BF62 && \
  apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 4F4EA0AAE5267A6C && \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get -y install \
  language-pack-en-base \
  software-properties-common \
  python-software-properties && \
  locale-gen en_US.UTF-8 && \
  export LANG=en_US.UTF-8 && \
  export LC_ALL=en_US.UTF-8 && \
  add-apt-repository -y ppa:adiscon/v8-stable && \
  add-apt-repository ppa:ondrej/php && \
  apt-add-repository multiverse && \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get -y install \
  rsyslog \
  rsyslog-mysql \
  lsof \
  geoip-database \
  geoipupdate \
  libgeoip1 \
  php-geoip \
  apache2 \
  apache2-dev \
  apache2-bin \
  apache2-data \
  apache2-utils \
  nginx \
  strace \
  screen \
  tcpdump \
  net-tools \
  git \
  sudo \
  supervisor \
  curl \
  less \
  iputils-ping \
  mlocate \
  mc \
  mysql-client \
  telnet \
  tcpdump \
  vim \
  libsasl2-dev \
  liblz4-dev \
  libevent-pthreads-2.0-5 \
  php7.1 \
  libapache2-mod-php7.1 \
  php7.1-bcmath \
  php7.1-cli \
  php7.1-common \
  php7.1-curl \
  php7.1-dev \
  php7.1-fpm \
  php7.1-gd \
  php7.1-gd \
  php7.1-imap \
  php7.1-json \
  php7.1-mbstring \
  php7.1-mcrypt \
  php7.1-mysql \
  php7.1-opcache \
  php7.1-readline \
  php7.1-xml \
  php7.1-zip \
  php7.1-ldap \
  php7.1-dev  \
  php-redis \
  php-geoip \
  php-igbinary \
  php-imagick \
  php-memcached \
  php-msgpack \
  php-pear \
  wget \
  unzip \
  re2c \
  libfcgi0ldbl

RUN \
  wget https://releases.hashicorp.com/consul/0.8.5/consul_0.8.5_linux_amd64.zip && \
  wget  https://releases.hashicorp.com/consul-template/0.19.4/consul-template_0.19.4_linux_amd64.zip && \
  unzip consul_0.8.5_linux_amd64.zip && \
  unzip consul-template_0.19.4_linux_amd64.zip && \
  mv consul /usr/local/bin/ && \
  mv consul-template /usr/local/bin/ && \
  mkdir -p /etc/consul/consul.d && \
  mkdir -p /tmp/consul


  
COPY files/etc/supervisord.conf                         /etc/supervisord.conf
COPY files/etc/consul/consul-agent.json                 /etc/consul/consul-agent.json
COPY files/etc/consul/consul.d/agent.json               /etc/consul/consul.d/agent.json

COPY scripts/start.sh /start.sh

CMD ["/start.sh"]
