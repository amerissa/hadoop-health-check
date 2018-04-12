FROM docker.elastic.co/logstash/logstash-oss:6.2.2
ENV uid $uid
ENV gid $gid
USER root
RUN yum -y install epel-release
RUN yum -y install python-pip
RUN \
    yum -y install python-pip krb5-workstation krb5-devel gcc python-devel&&\
    pip install --upgrade pip &&\
    pip install requests &&\
    pip install requests-kerberos &&\
    pip install configparser &&\
    mkdir -p /data &&\
    mkdir -p /utls &&\
#RUN echo http://dl-2.alpinelinux.org/alpine/edge/community/ >> /etc/apk/repositories
#RUN apk add --no-cache shadow && \ 
 usermod -u 1000  logstash && \
 groupmod -g 1000 logstash && \
RUN chown -R logstash:logstash /data &&\
  chown -R logstash:logstash /utls
USER logstash
