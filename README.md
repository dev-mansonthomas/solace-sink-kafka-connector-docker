# This a container version of Solace Sink Kafka Connector

The Solace Sink Kafka Connector repo is here :
https://github.com/SolaceProducts/pubsubplus-connector-kafka-sink


## Configuration instructions 

### Solace Configuration
cp solace-sink-template.properties solace-sink.properties

edit the new file and fill at least the following properties :

- topics
- sol.host
- sol.username
- sol.password
- sol.vpn_name
- sol.topics

### Kafka Configuration

Edit connect-standalone.properties
and adjust the connection settings to connect to Kafka

##Run the container

Run the run.sh script
./run.sh

it will map the two configuration files to

##Container noteworthy path

- binaries are copied in /solace folder, owned by solace user
- Kafka connect is launched with solace user
- symlink are used to have stable path whatever the version of the subcomponents
- **Custom Message Processor**
  - /solace/pubsubplus-connector-kafka-sink/lib/ is where you want to copy your own implementation of message processor
  - sol.message_processor_class= is the property to update to specify the custom processor class


```
ls -la /solace
kafka -> kafka_2.13-2.8.1
kafka_2.13-2.8.1
pubsubplus-connector-kafka-sink -> pubsubplus-connector-kafka-sink-2.2.0
pubsubplus-connector-kafka-sink-2.2.0
```