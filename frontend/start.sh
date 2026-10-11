#!/bin/sh
node /app/frontend.js &
sleep 2
nginx -g 'daemon off;'