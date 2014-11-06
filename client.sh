#!/bin/bash
if [ -z "$1" ]; then
  consul agent -client 0.0.0.0 -data-dir /tmp
else
  consul agent -client 0.0.0.0 -data-dir /tmp -join $1
fi
