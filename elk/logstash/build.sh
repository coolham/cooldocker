#!/bin/sh
cp logstash.yml  /opt/product/data/elk
docker build -t logstash:v6.2.3 ./
