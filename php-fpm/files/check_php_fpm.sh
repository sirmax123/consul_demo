#!/bin/bash

set -x

SCRIPT_NAME=/status \
SCRIPT_FILENAME=/status \
REQUEST_METHOD=GET \
cgi-fcgi -bind -connect 127.0.0.1:9000
