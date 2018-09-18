#!/bin/sh

docker run  --restart=always -d -ti -v /opt/product/data:/opt/product/data -p 5044:5044 -p 4560:4560 -p 18080:8080 logstash:v6.2.4 /bin/bash
