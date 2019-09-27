#!/bin/bash

cd producer
docker-compose rm -f
docker-compose up --build
