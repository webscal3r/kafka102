# Create topic: 
kafka-topics.sh --zookeeper localhost:2181 --create --topic test --partitions 1 --replication-factor 1

# Check topic: 
kafka-topics.sh --zookeeper localhost:2181 --list
kafka-topics.sh --zookeeper localhost:2181 --describe


# Produce message: 
kafka-console-producer.sh --broker-list localhost:9092 --topic test


# Consume message: 
kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic test --from-beginning


# Consumer Group:
kafka-consumer-groups.sh --bootstrap-server localhost:9092 --list
kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group mygroup
