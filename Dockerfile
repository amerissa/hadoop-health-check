FROM centos:latest
MAINTAINER Amer Issa <amer.issa1@gmail.com>

#Install Java
RUN  yum install -y java-1.6.0-openjdk.x86_64

#Install ELK Stack and Basic Configs
RUN \
    rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch \
    echo -e "[elasticsearch-6.x]\nname=Elasticsearch repository for 6.x packages\n\nbaseurl=https://artifacts.elastic.co/packages/6.x/yum\ngpgcheck=1\ngpgkey=https://artifacts.elastic.co/GPG-KEY-elasticsearch\nenabled=1\nautorefresh=1\ntype=rpm-md" > /etc/yum.repos.d/elastic.repo \
    yum -y install elasticsearch logstash kibana \
    systemctl daemon-reload \
    systemctl enable elasticsearch.service \
    systemctl enable logstash.service \
    systemctl enable kibana.service \
    sed -i '/#cluster.name:.*/a cluster.name: logstash' /etc/elasticsearch/elasticsearch.yml && \
    sed -i '/#path.data: \/path\/to\/data/a path.data: /data' /etc/elasticsearch/elasticsearch.yml && \
    sed -i '/#path.logs: \/path\/to\/logs/a path.logs: /var/log/elasticsearch' /etc/elasticsearch/elasticsearch.yml && \
    sed -i 's/#server\.port: 5601/server.port: 80/' /etc/kibana/kibana.yml && \
    sed -i 's/#server\.host: "localhost"/server.host: 0\.0\.0\.0/' /etc/kibana/kibana.yml \
    sed -i 's/-Xms1g/-Xms3g/g' /etc/elasticsearch/jvm.options \
    sed -i 's/-Xmx1g/-Xmx3g/g' /etc/elasticsearch/jvm.options \
    sed -i 's/-Xms256m/-Xms1g/g' /etc/logstash/jvm.options \
    sed -i 's/-Xmx1g/-Xmx2g/g' /etc/logstash/jvm.options \
    chown elasticsearch:elasticsearch /data

#Setup kerberos
RUN \
    yum -y install krb5-workstation krb5-devel

#Setup Python
RUN \
    easy_install pip \
    pip install requests \
    pip install requests-kerberos

ADD filters/ /etc/logstash/conf.d/

EXPOSE 9001
EXPOSE 5601
