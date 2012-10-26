#!/bin/bash

SERVICES_LOCATION=/usr/local/etc/services.d

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ ! -d /usr/local/bin ]; then
  mkdir -p /usr/local/bin
fi
if [ ! -d /usr/local/etc ]; then
  mkdir -p /usr/local/etc
fi

ln -nfs $DIR/service /usr/local/bin/service && ln -nfs $DIR/services.d $SERVICES_LOCATION
