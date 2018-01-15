#!/bin/bash

set -x
env

exec /usr/bin/supervisord -n -c /etc/supervisord.conf

