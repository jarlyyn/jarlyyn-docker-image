FROM centos:centos6
MAINTAINER Jarlyyn
RUN yum update -y
RUN yum install epel-release -y
RUN yum update -y
RUN yum install nginx httpd nodejs npm proftpd supervisor -y
RUN yum install mysql-server mysql -y
RUN yum install php php-common php-phpunit-* y
RUN npm install pm2 -g
RUN npm install mocha -g
RUN yum clean all
CMD /bin/bash
