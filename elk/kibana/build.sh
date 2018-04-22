#!/bin/sh

cp kibana.yml /opt/product/data/elk/
docker build -t kibana:v6.2.4 ./
