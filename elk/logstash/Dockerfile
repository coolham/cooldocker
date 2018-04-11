FROM elkbase:v1.0
MAINTAINER coolham
VOLUME [ "/opt/product/data/" ]
ADD ./logstash-6.2.3.tar.gz /opt/product/
ADD entrypoint.sh /root/
RUN chmod +x /root/entrypoint.sh
EXPOSE 5044
EXPOSE 4560
EXPOSE 8080
ENTRYPOINT ["/root/entrypoint.sh"]
CMD ["/usr/sbin/init"]
