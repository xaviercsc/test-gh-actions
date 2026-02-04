#!/bin/bash
set -e
echo "Testing helloworld2 proxy..."
STATUS=$(curl -s -o /dev/null -w "%{http_code}" https://34.149.228.232.nip.io/helloworld2)
if [ "$STATUS" -eq 200 ]; then
  echo "helloworld2 proxy OK"
else
  echo "helloworld2 proxy FAILED with status $STATUS"
  exit 1
fi
