FROM docker.elastic.co/elasticsearch/elasticsearch-oss:6.2.1
ARG uid
ARG gid
USER root
RUN usermod -u $uid elasticsearch
RUN groupmod -g $gid elasticsearch
RUN chown -R elasticsearch:elasticsearch /usr/share/elasticsearch/data
USER elasticsearch
