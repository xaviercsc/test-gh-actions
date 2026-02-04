#!/bin/bash
set -e
echo "Testing helloworld proxy..."
STATUS=$(curl -s -o /dev/null -w "%{http_code}" https://34.149.228.232.nip.io/helloworld)
if [ "$STATUS" -eq 200 ]; then
  echo "helloworld proxy OK"
else
  echo "helloworld proxy FAILED with status $STATUS"
  exit 1
fi
