#!/bin/bash
set -e
source .env
envsubst < Corefile.template > Corefile
docker compose up -d
