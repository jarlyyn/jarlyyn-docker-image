FROM centos:centos6
MAINTAINER Jarlyyn
RUN yum update -y
RUN yum install epel-release -y
RUN yum update -y
RUN yum install nginx httpd proftpd supervisor -y
RUN yum install mysql-server mysql -y
RUN yum install php php-common php-phpunit* -y
RUN npm install nodejs npm pm2 mocha -g
RUN yum clean all
CMD supervisord -n
