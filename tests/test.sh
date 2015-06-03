#!/bin/bash
set -xe

export IMAGE_NAME="fvigotti/docker-kafka-webconsole"
docker build -t "${IMAGE_NAME}" ../src

export WEBCONSOLE_PORT=9000
docker run --rm -ti -p ${WEBCONSOLE_PORT}:${WEBCONSOLE_PORT} \
    "${IMAGE_NAME}"

