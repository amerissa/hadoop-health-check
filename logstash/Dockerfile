FROM docker.elastic.co/logstash/logstash-oss:6.2.2
ARG uid
ARG gid
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
    mkdir -p /utls
RUN usermod -u $uid logstash
RUN groupmod -g $gid logstash 
RUN \
    chown -R logstash:logstash /data &&\
    chown -R logstash:logstash /utls
USER logstash
