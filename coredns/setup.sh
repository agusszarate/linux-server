#!/bin/bash
set -e
set -a
source .env
set +a
envsubst < Corefile.template > Corefile
docker compose up -d
