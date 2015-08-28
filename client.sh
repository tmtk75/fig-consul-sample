#!/bin/bash
if [ -z "$1" ]; then
  consul agent -client 0.0.0.0 -data-dir /tmp/consul -config-file /opt/conf.json
else
  consul agent -client 0.0.0.0 -data-dir /tmp/consul -config-file /opt/conf.json -join $1
fi
