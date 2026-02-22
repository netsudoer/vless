#!/bin/bash

curl --http2 -vk --resolve netcoder.xyz:443:127.0.0.1 \
  https://netcoder.xyz/Tun/Tun \
  -H "content-type: application/grpc" \
  --data-binary $'\x00\x00\x00\x00\x00' \
  --max-time 5
