
#wurstmeister/kafka

下载zookeeper镜像:
docker pull wurstmeister/zookeeper

下载kafka镜像:
docker pull wurstmeister/kafka


在自己选的目录下创建一个docker-compose.yml文件，

启动docker-compose
docker-compose up -d

启动多个kafka 节点，比如3个
docker-compose scale kafka=3

# 
https://www.jianshu.com/p/8ccd712e2599

