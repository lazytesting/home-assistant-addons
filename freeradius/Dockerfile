ARG BUILD_FROM=hassioaddons/base:2.3.1
# hadolint ignore=DL3006
FROM ${BUILD_FROM}

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

COPY run.sh /
RUN chmod a+x /run.sh

WORKDIR /projects

RUN apk update && apk upgrade && \
    apk add --update freeradius freeradius-sqlite freeradius-radclient freeradius-rest sqlite openssl-dev && \
    chgrp radius  /usr/sbin/radiusd && chmod g+rwx /usr/sbin/radiusd && \
    rm /var/cache/apk/*

VOLUME \
    /opt/db/ \
    /etc/freeradius/certs

EXPOSE \
    1812/udp \
    1813/udp \
    18120

CMD ["run.sh"] 
