#!/bin/bash

git clone --depth=1 https://github.com/wurstmeister/kafka-docker

docker network create kafka-dp
