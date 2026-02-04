#!/bin/bash
set -e
echo "Testing helloworld3 proxy with POST..."
STATUS=$(curl -s -o /dev/null -w "%{http_code}" -X POST -d '{"msg":"hello"}' \
  -H "Content-Type: application/json" https://34.149.228.232.nip.io/helloworld3)
if [ "$STATUS" -eq 200 ]; then
  echo "helloworld3 proxy OK"
else
  echo "helloworld3 proxy FAILED with status $STATUS"
  exit 1
fi
