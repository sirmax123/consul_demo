/usr/local/bin/consul agent \
-server \
-ui \
-config-dir=/opt/hashicorp/consul/etc/consul.d \
-config-dir=/var/opt/hashicorp/consul/consul.d \
-data-dir=/tmp/consul \
-config-file=/etc/consul/consul-server.json