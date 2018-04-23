FROM elkbase:v1.1
MAINTAINER coolham
VOLUME [ "/opt/product/data/" ]
ADD ./kibana-6.2.4-linux-x86_64.tar.gz /opt/product/
ADD ./entrypoint.sh /root/
RUN chmod +x /root/entrypoint.sh
EXPOSE 5601
ENTRYPOINT ["/root/entrypoint.sh"]
CMD ["/usr/sbin/init"]

