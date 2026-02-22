#!/usr/bin/env bash
set -euo pipefail

URL="http://127.0.0.1:20000/Tun/Tun"
PAYLOAD="$(printf '\x00\x00\x00\x00\x00')"

curl --http2-prior-knowledge -v \
  "$URL" \
  -H 'content-type: application/grpc' \
  --data-binary "$PAYLOAD" \
  --max-time 5
