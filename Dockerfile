FROM centos:latest
MAINTAINER tmtk75
WORKDIR /opt
RUN yum install -y unzip curl ld-linux.so.2; \
    curl -OL https://dl.bintray.com/mitchellh/consul/0.5.2_linux_amd64.zip; \
    unzip 0.5.2_linux_amd64.zip; \
    mv consul /usr/local/bin; \
    chmod +x /usr/local/bin/consul;  \
    curl -OL https://dl.bintray.com/mitchellh/consul/0.5.2_web_ui.zip; \
    unzip 0.5.2_web_ui.zip
