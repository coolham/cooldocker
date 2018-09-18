#!/bin/bash
export JAVA_HOME=/opt/product/tools/jdk1.8.0_172
export PATH=$JAVA_HOME/bin:$PATH
JAVA_OPTS="$JAVA_OPTS -Dfile.encoding=UTF8  -Duser.timezone=GMT+08"
cd /opt/product/logstash-6.2.4/config/
rm -rf logstash.yml
cp /opt/product/data/elk/logstash.yml logstash.yml
/opt/product/logstash-6.2.4/bin/logstash -f /opt/product/data/elk/logstash.conf
