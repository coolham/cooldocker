

## JDK
1. Download jdk1.8, extract it and put unser ./tools

## Dockerfile
2.  编写dockerfile



##准备

###建立目录
在当前目录下建立tools目录
把JDK的包解压到tools目录下，例如：
[root@bogon-84 elkbase]# ls  tools/
jdk1.8.0_172



## build

docker build -t elkbase:v1.0 ./
