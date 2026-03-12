#!/bin/bash

URL="http://15.206.208.251:8080"

STATUS=$(curl -o /dev/null -s -w "%{http_code}" $URL)

if [ $STATUS -eq 200 ]; then
  echo "Application is UP"
else
  echo "Application is DOWN"
fi
