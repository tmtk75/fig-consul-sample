FROM centos:latest
MAINTAINER tmtk75
WORKDIR /opt
ADD ./server.sh /opt/server.sh
ADD ./client.sh /opt/client.sh
RUN yum install -y unzip curl ld-linux.so.2
RUN curl -OL https://dl.bintray.com/mitchellh/consul/0.4.1_linux_amd64.zip; \
    unzip 0.4.1_linux_amd64.zip; \
    mv consul /usr/local/bin; \
    chmod +x /usr/local/bin/consul;  \
    curl -OL https://dl.bintray.com/mitchellh/consul/0.4.1_web_ui.zip; \
    unzip 0.4.1_web_ui.zip; \
    chmod +x /opt/server.sh /opt/client.sh
