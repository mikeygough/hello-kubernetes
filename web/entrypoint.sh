#!/bin/bash
APP_PORT=${PORT:-8000}
cd /app/
opt/env/bin/gunicorn --worker-tmp-dir /dev/shm hello_kubernetes.wsgi:application --bind "0.0.0.0:${APP_PORT}"