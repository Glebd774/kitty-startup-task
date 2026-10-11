#!/bin/sh
python /app/backend.py &
sleep 2
nginx -g 'daemon off;'