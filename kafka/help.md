
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



#

## zookeeper

docker pull zookeeper:latest 


启动zookeeper

docker run -d --name zookeeper --publish 2181:2181 --volume /etc/localtime:/etc/localtime zookeeper:latest



##fafka

docker pull wurstmeister/kafka:latest

启动kafka:

docker run -d --name kafka --publish 9092:9092 \
--link zookeeper \
--env KAFKA_ZOOKEEPER_CONNECT=zookeeper:2181 \
--env KAFKA_ADVERTISED_HOST_NAME=kafka所在宿主机的IP \
--env KAFKA_ADVERTISED_PORT=9092 \
--volume /etc/localtime:/etc/localtime \
wurstmeister/kafka:latest




