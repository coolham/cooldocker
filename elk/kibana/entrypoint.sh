#!/bin/bash 
export JAVA_HOME=/opt/product/tools/jdk1.8.0_162
export PATH=$JAVA_HOME/bin:$PATH
cd /opt/product/kibana-6.2.3-linux-x86_64/config/
rm -rf kibana.yml
ln -s /opt/product/data/elk/kibana.yml . 
cd /opt/product/kibana-6.2.3-linux-x86_64/
#rm -rf data
#ln -s  /opt/product/data/elk/kibanadata /opt/product/kibana-6.2.3-linux-x86_64/data
/opt/product/kibana-6.2.3-linux-x86_64/bin/kibana

