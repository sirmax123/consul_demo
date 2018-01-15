#!/bin/bash

set -x
env

H=$(hostname -f)
U=$(cat /proc/sys/kernel/random/uuid)
test -f /etc/consul/consul.d/node.json ||

cat <<EOF >  /etc/consul/consul.d/node.json
{
    "node_name": "${H}-${U}"
}
EOF


exec /usr/bin/supervisord -n -c /etc/supervisord.conf

