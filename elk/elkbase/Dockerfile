FROM centos:7.4.1708
MAINTAINER coolham
VOLUME [ "/opt/product/data/" ]
RUN  /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN /bin/echo -e "ZONE="Asia/Shanghai"\nUTC=false\nRTC=false" > /etc/sysconfig/clock
RUN mkdir /opt/product/tools/
ADD ./tools /opt/product/tools/
ENV JAVA_HOME /opt/product/tools/jdk1.8.0_172
CMD ["/usr/sbin/init"]
