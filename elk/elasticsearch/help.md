

## download
https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-6.2.4.tar.gz


docker build -f elasticsearch:v1.0 ./

ln -s ~/Tools/elasticsearch-6.2.3.tar.gz  elasticsearch


elasticsearch的配置
在/opt/product/data目录下
建立elk目录，并拷贝elasticsearch.yml文件到该目录
设置
path.data: /opt/product/data/elk/elasticsearchdata
network.host: 0.0.0.0
在/opt/product/data目录创建elasticsearchdata 目录

docker run --privileged --restart=always -d -ti -v /opt/product/data:/opt/product/data -p 9200:9200 -p 9300:9300 elasticsearch:v1.0 /bin/bash


https://www.jianshu.com/p/460a307adebb
https://www.elastic.co/cn/

