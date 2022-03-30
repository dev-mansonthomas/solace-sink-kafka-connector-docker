#!/bin/bash
. common.sh

docker push mansonthomas/solace-sink-kafka-connector-docker:"${SOLACE_SINK_CONNECTOR_DOCKER_HUB_VERSION}"