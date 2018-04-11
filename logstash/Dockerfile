FROM docker.elastic.co/logstash/logstash-oss:6.2.2
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
    chmod -R 777 /data &&\
    chmod -R 777 /utls
USER logstash
