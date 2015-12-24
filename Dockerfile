FROM nginx:1.9.9

MAINTAINER Toshiya Kimura

COPY create_ssl_key.sh /

RUN chmod +x /create_ssl_key.sh && \
    /create_ssl_key.sh

COPY default.conf /etc/nginx/conf.d/
