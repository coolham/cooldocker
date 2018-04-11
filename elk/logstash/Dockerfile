FROM elkbase:v1.0
MAINTAINER coolham
VOLUME [ "/opt/product/data/" ]
ADD ./logstash-6.2.3.tar.gz /opt/product/
ADD start.sh /root/
RUN chmod +x /root/start.sh
EXPOSE 5044
EXPOSE 4560
EXPOSE 8080
ENTRYPOINT ["/root/start.sh"]
CMD ["/usr/sbin/init"]
