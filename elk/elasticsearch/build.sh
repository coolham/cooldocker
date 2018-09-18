#!/bin/sh

elk_dir='/opt/product/data/elk/'
if [ ! -d $elk_dir  ];then
  mkdir -p $elk_dir
fi

elk_log_dir='/opt/product/data/elk/log'
if [ ! -d $elk_log_dir  ];then
  mkdir -p $elk_log_dir
fi

cp ./elasticsearch.yml /opt/product/data/elk/
docker build -t elasticsearch:v6.2.4 ./
