#!/bin/bash
set -e # exit if a command exits with a not-zero exit code

/usr/bin/docker-entrypoint.sh&

superset fab create-admin --username $SUPERSET_USERNAME --firstname Superset --lastname Admin --email admin@superset.com --password $SUPERSET_PASSWORD
superset db upgrade
superset init

wait