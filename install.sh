#!/bin/bash

DIR=`dirname $0`

if [ ! -d /usr/local/bin ]; then
  mkdir -p /usr/local/bin
fi
if [ ! -d /usr/local/etc ]; then
  mkdir -p /usr/local/etc
fi

cp $DIR/service /usr/local/bin/ && cp -R $DIR/services.d /usr/local/etc/
