#!/usr/bin/env bash

USER_ID=`id -u`
GROUP_ID=`id -g`

if ! grep "^[^:]*:x:$USER_ID:.*$" /etc/passwd > /dev/null 2>/dev/null; then
    echo "bazingar:x:$USER_ID:$GROUP_ID:bmtg:/home/bazingar:/bin/bash" >> /etc/passwd
    export HOME="/home/bazingar"
    sudo mkdir -p /home/bazingar

    if ! grep "^[^:]*:x:$GROUP_ID:$" /etc/group > /dev/null 2>/dev/null; then
        echo "pv:x:$GROUP_ID:" >> /etc/group
    fi

    sudo chown -R "$USER_ID:$GROUP_ID" /home/pv
fi

sudo chmod go-w /etc/passwd
sudo chmod go-w /etc/group

exec "$@"

