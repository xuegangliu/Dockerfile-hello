#!/bin/sh

CONF_FILE=/etc/nginx/nginx.conf
LISTTEN_PORT=80
sed -i "s/80/${LISTEN_PORT}/" ${CONF_FILE}

exec nginx -g "daemon off;"
