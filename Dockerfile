FROM haproxy:2.0.13-alpine

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

RUN apk --no-cache add ca-certificates \
    && rm -rf /var/cache/apk/*

EXPOSE 443
