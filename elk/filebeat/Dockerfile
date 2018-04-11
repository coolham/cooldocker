FROM elkbase:v1.0
MAINTAINER coolham
VOLUME [ "/opt/product/data/" ]
ADD ./filebeat-6.2.3-linux-x86_64.tar.gz /opt/product/
ADD entrypoint.sh /root/
RUN chmod +x /root/entrypoint.sh
ENTRYPOINT ["/root/entrypoint.sh"]
CMD ["/usr/sbin/init"]
