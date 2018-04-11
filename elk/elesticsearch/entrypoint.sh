#!/bin/bash
echo "* soft nofile 65536" > /etc/security/limits.conf 
echo "* hard nofile 131072" > /etc/security/limits.conf
echo "* soft nproc 2048" > /etc/security/limits.conf
echo "* hard nproc 4096" > /etc/security/limits.conf
echo "vm.max_map_count=655360" > /etc/sysctl.conf 
sysctl -p
cd /opt/product/elasticsearch-6.2.3/config/
rm -rf elasticsearch.yml
cp /opt/product/data/elk/elasticsearch.yml .
chown -R elk:elk /opt/product/elasticsearch-6.2.3
chown -R elk:elk /opt/product/data/elk/elasticsearchdata
su - elk <<!
export JAVA_HOME=/opt/product/tools/jdk1.8.0_162
export PATH=$JAVA_HOME/bin:$PATH
/opt/product/elasticsearch-6.2.3/bin/elasticsearch

