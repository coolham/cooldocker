
docker build -f logstash:v1.0 ./

配置logstash
在/opt/product/data/elk目录下创建logstash.conf
input {     
   beats {
    port => "5044"
   }
}
output {
   elasticsearch {
       hosts => ["elasticsearch的ip:9200"]
       index => "logstash-tomcat-accesslog-%{+YYYY.MM.dd}"
    }       
}

gstash.yml

将logstash本身的logstash.yml 拷贝到/opt/product/data/elk目录下
在/opt/product/data/elk目录下建立 logstashdata目录

启动logstash
docker run  --restart=always -d -ti -v /opt/product/data:/opt/product/data -p 5044:5044 -p 4560:4560

