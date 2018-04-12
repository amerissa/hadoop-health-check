FROM docker.elastic.co/elasticsearch/elasticsearch-oss:6.2.1
ENV uid $uid
ENV gid $gid
USER root
CMD usermod -u $uid  elasticsearch
CMD groupmod -g $gid elasticsearch
CMD  chown -R elasticsearch:elasticsearch /usr/share/elasticsearch
USER elasticsearch
