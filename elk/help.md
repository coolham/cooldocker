

#Comand

$>docker stop $(docker ps -a -q)

1.停止所有的container，这样才能够删除其中的images：

docker stop $(docker ps -a -q)

如果想要删除所有container的话再加一个指令：

docker rm $(docker ps -a -q)

2.查看当前有些什么images

docker images

3.删除images，通过image的id来指定删除谁

docker rmi <image id>

想要删除untagged images，也就是那些id为<None>的image的话可以用

docker rmi $(docker images | grep "^<none>" | awk "{print $3}")

要删除全部image的话

docker rmi $(docker images -q)


#Setup


https://www.elastic.co/cn/downloads



## Docker install

安装需要的软件包：
$ sudo yum install -y yum-utils device-mapper-persistent-data lvm2

设置yum源：

Docker 软件包已经包括在默认的 CentOS-Extras 软件源里
yum install docker

systemctl start docker.service
systemctl enable docker.service
 
 
##使用aliyun镜像


# Ref
https://www.jianshu.com/p/460a307adebb
https://blog.csdn.net/bittersweet0324/article/details/78503961

https://www.elastic.co/cn/downloads


#Q&A

## SELinux is not supported with the overlay2 graph driver on this kernel

意思是说：此linux的内核中的SELinux不支持 overlay2 graph driver ，解决方法有两个，要么启动一个新内核，要么就在docker里禁用selinux，--selinux-enabled=false

vi /etc/sysconfig/docker
--selinux-enabled=false
systemctl start docker

