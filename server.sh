#!/bin/bash
if [ -z "$2" ]; then
  consul agent -client 0.0.0.0 -ui-dir /opt/dist -data-dir /tmp/consul \
	  -config-file=/opt/conf.json \
	  -server -bootstrap-expect=$1
else
  consul agent -client 0.0.0.0 -ui-dir /opt/dist -data-dir /tmp/consul \
	  -config-file=/opt/conf.json \
	  -server -bootstrap-expect=$1 -join $2
fi
