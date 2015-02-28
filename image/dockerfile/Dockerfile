FROM centos:centos6
MAINTAINER Jarlyyn
RUN yum update -y
RUN yum install epel-release -y
RUN yum update -y
RUN yum install nginx httpd proftpd supervisor -y
#database
RUN yum install mysql-server mysql -y
RUN yum install redis hiredis php-redis -y
#php
RUN yum install php php-common php-phpunit* php-mcrypt-y
#node js
RUN yum install nodejs npm -y
RUN npm install pm2 mocha -g
#clean cache
RUN yum clean all
#start cmd
CMD supervisord -n
