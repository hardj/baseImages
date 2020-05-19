FROM nginx:1.17.1

COPY default.conf /etc/nginx/conf.d

RUN ln -sf /dev/stdout /var/log/nginx/access.log && \
    ln -sf /dev/stderr /var/log/nginx/error.log

RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf \
    && sed -i "s/www-data/root/g" /etc/nginx/nginx.conf

COPY ./docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]