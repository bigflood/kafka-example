#!/bin/bash

docker run --network kafka-dp --rm -it wurstmeister/kafka \
    /opt/kafka/bin/kafka-consumer-groups.sh \
    --bootstrap-server kafka:9092 \
    --group g1 \
    --describe
