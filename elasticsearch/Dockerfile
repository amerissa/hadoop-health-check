FROM docker.elastic.co/elasticsearch/elasticsearch-oss:6.2.1
USER root
RUN chgrp -R 0 /usr/share/elasticsearch && \
    chmod -Rf g+rwx /usr/share/elasticsearch
USER elasticsearch
