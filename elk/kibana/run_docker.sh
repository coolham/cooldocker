#!/bin/sh
docker run  --restart=always -d -ti -v /opt/product/data:/opt/product/data -p 5601:5601  kibana:v6.2.3 /bin/bash

