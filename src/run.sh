#!/bin/bash
. common.sh

docker rm --force /solace-sink-connector

docker run -v "$(pwd)/solace-sink.properties:/solace/pubsubplus-connector-kafka-sink/etc/solace-sink.properties:ro" \
           -v "$(pwd)/connect-standalone.properties:/solace/kafka/config/connect-standalone.properties:ro"                \
           --network solace-network                                                                                       \
           --name solace-sink-connector                                                                                 \
           -d mansonthomas/solace-sink-kafka-connector-docker:"${SOLACE_SINK_CONNECTOR_VERSION}"



