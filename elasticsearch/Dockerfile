FROM docker.elastic.co/elasticsearch/elasticsearch-oss:6.2.1
ENV uid $uid
ENV gid $gid
USER root
RUN echo $uid $gid
RUN usermod -u $uid  elasticsearch && \
 groupmod -g $gid elasticsearch && \
	usermod -g $gid elasticsearch && \
        chown -R elasticsearch:elasticsearch /usr/share/elasticsearch
USER elasticsearch
