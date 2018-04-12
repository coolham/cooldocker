#!/bin/sh
cp logstash.yml  /opt/product/data/elk
cp conf/logstash-filebeat.conf  /opt/product/data/elk/logstash.conf
cp /etc/pki/tls/openssl.cnf ./
cp /etc/pki/tls/certs/logstash-forwarder.crt ./
cp /etc/pki/tls/private/logstash-forwarder.key ./
docker build -t logstash:v6.2.3 ./
