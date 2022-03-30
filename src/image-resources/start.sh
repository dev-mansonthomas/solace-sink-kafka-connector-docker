#!/bin/bash
echo "The following command will be run"
echo "/solace/kafka/bin/connect-standalone.sh /solace/kafka/config/connect-standalone.properties /solace/pubsubplus-connector-kafka-sink/etc/solace-sink.properties"
echo "######################################### - /solace/kafka/config/connect-standalone.properties"
cat /solace/kafka/config/connect-standalone.properties
echo "######################################### - /solace/kafka/config/connect-standalone.properties - END"
echo "######################################### - /solace/pubsubplus-connector-kafka-sink/etc/solace-sink.properties"
cat /solace/pubsubplus-connector-kafka-sink/etc/solace-sink.properties
echo "######################################### - /solace/pubsubplus-connector-kafka-sink/etc/solace-sink.properties - END"

/solace/kafka/bin/connect-standalone.sh /solace/kafka/config/connect-standalone.properties /solace/pubsubplus-connector-kafka-sink/etc/solace-sink.properties