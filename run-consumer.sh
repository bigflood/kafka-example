#!/bin/bash

docker run --network kafka-dp --rm -it wurstmeister/kafka \
    /opt/kafka/bin/kafka-console-consumer.sh \
    --topic test \
    --group g1 \
    --bootstrap-server kafka:9092
