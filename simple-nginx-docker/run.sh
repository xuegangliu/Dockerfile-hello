#!/bin/sh


#CONF_FILE=/etc/nginx/nginx.conf
#LISTTEN_PORT=80
#sed -i "s/#LISTEN_PORT#/${LISTEN_PORT}/" ${CONF_FILE}

exec nginx -g "daemon off;"
exec cd /usr/sbin
exec ./nginx
