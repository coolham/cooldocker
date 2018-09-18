#!/bin/bash
FILEBEAT=filebeat-6.2.4-linux-x86_64
export JAVA_HOME=/opt/product/tools/jdk1.8.0_172
export PATH=$JAVA_HOME/bin:$PATH
cd /opt/product/${FILEBEAT}/
rm -rf filebeat.yml
ln -s /opt/product/data/elk/filebeat.yml . 
rm -rf data 
ln -s /opt/product/data/elk/filebeatdata /opt/product/${FILEBEAT}/data
/opt/product/${FILEBEAT}/filebeat -e -c filebeat.yml

