#!/bin/sh

docker run -d -ti -v /opt/product/data:/opt/product/data  filebeat:v6.2.4 /bin/bash

