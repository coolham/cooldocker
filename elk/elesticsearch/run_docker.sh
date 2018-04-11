#!/bin/sh
docker run --privileged --restart=always -d -ti -v /opt/product/data:/opt/product/data -p 9200:9200 -p 9300:9300 elasticsearch:v6.2.3 /bin/bash

