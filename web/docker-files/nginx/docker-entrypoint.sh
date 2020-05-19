#!/bin/sh

# настройка доменов в nginx
sed -i -e "s/front_domain/${DOMAIN}/g" /etc/nginx/conf.d/default.conf
nginx
