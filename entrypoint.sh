#!/bin/bash
set -e

if [ "x$DOCKER_XDEBUG" = "xyes" ]; then
    echo "Enabling Xdebug..."
    echo "xdebug.remote_host=$DOCKER_HOST_IP" >/usr/local/etc/php/conf.d/xdebug-host.ini
fi

exec apache2-foreground "$@"
