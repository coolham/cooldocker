#!/bin/sh
cp logstash.yml  /opt/product/data/elk
cp conf/logstash-filebeat.conf  /opt/product/data/elk/logstash.conf
docker build -t logstash:v6.2.3 ./
