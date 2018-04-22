#!/bin/sh
cp elasticsearch.yml /opt/product/data/elk/
docker build -t elasticsearch:v6.2.4 ./
