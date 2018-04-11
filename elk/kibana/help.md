配置
在/opt/product/data/elk目录下建立kibana.yml
server.port: 5601
server.host: "0.0.0.0"
elasticsearch.url: "http://ip:9200"
启动
docker run  --restart=always -d -ti -v /opt/product/data:/opt/product/data -p 5601:5601  kibana:v1.0 /bin/bash
访问
http://ip:5601/


