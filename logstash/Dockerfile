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
    mkdir /data &&\
    mkdir /utls &&\
    chmod 777 /data &&\
    chmod 777 /utls
USER logstash
