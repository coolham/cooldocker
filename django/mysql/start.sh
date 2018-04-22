#!/bin/bash 
#

echo "---------------start mysql image-------------------"
#docker run --name mysql \
#-v $(pwd)/conf.d:/etc/mysql/conf.d \
#-v $(pwd)/data:/var/lib/mysql \
#-e MYSQL_ROOT_PASSWORD="Kang@123" \
#-e MYSQL_DATABASE=kangaroo \
#-p 3307:3306 \
#-d daocloud.io/mysql:5.6.30 \
#--character-set-server=utf8 \
#--collation-server=utf8_unicode_ci
docker run --name mysql \
-e MYSQL_ROOT_PASSWORD=123456 \
-d daocloud.io/mysql
sleep 15
