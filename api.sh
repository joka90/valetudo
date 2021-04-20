#!/bin/bash

args="$2"
[ -z "$args" ] && args="[]"
curl -X PUT -H "Content-Type: application/json" -d "{\"method\":\"$1\", \"args\": $args}" "http://192.168.1.248/api/fwd_req"
echo
