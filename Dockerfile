FROM centos

#docker build -m 100m --rm -t amaurer/homewebserver:0.1 .

MAINTAINER maurerdotme

RUN yum install epel-release -y
RUN yum install nginx -y