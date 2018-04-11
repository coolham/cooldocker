#!/bin/sh
cp filebeat.yml /opt/product/data/elk
docker build -t filebeat:v6.2.3 ./

