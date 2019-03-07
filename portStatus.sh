#!/usr/bin/sh

echo "Status port $1: $(netstat -tulpn | grep ":$1 " | awk '{print $6}')"
