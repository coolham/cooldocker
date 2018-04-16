#!/bin/sh
cp filebeat.yml /opt/product/data/elk
cp /etc/pki/tls/openssl.cnf ./
cp /etc/pki/tls/certs/logstash-forwarder.crt ./
cp /etc/pki/tls/private/logstash-forwarder.key ./
docker build -t filebeat:v6.2.3 ./
