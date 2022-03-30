#!/bin/bash
. common.sh

docker rm --force /solace-sink-connector
PREVIOUS_BUILD=$(docker image ls | grep "mansonthomas/solace-sink-kafka-connector-docker" | grep "${SOLACE_SINK_CONNECTOR_VERSION}" | tr -s ' ' | cut -d' ' -f3)
docker image rm "${PREVIOUS_BUILD}"
# add '--progress=plain' to get output from commands like cat, ls etc... for debugging.
docker build -t mansonthomas/solace-sink-kafka-connector-docker:"${SOLACE_SINK_CONNECTOR_VERSION}" -f Dockerfile image-resources/

echo "run the following to scan the image : "
echo "docker scan --file Dockerfile mansonthomas/solace-sink-kafka-connector-docker:\"${SOLACE_SINK_CONNECTOR_VERSION}\""