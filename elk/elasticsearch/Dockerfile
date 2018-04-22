FROM elkbase:v1.1
MAINTAINER coolham
VOLUME [ "/opt/product/data/" ]
ADD ./elasticsearch-6.2.4.tar.gz /opt/product/
RUN useradd elk && chown -R elk:elk /opt/product/elasticsearch-6.2.4
ADD entrypoint.sh /root/
RUN chmod +x /root/entrypoint.sh
EXPOSE 9200
EXPOSE 9300
ENTRYPOINT ["/root/entrypoint.sh"]
CMD ["/usr/sbin/init"]

