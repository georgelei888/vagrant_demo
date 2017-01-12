#!/bin/sh

yum update -y --exclude=kernel
yum install -y nano git unzip screen

# Apache
yum install -y httpd htppd-devel httpd-tools
chkconfig --add httpd
chkconfig httpd on
service httpd stop

rm -rf /var/www/html/
ln -s /vagrant /var/www/html

service httpd start

# PHP
yum install -y php php-cli php-common php-devel php-mysql

# MYSQL
yum install -y mysql mysql-server mysql-devel
chkconfig --add mysqld
chkconfig mysqld on

service mysqld start

mysql -u root -e "show databases";

# Download started content


service httpd restart
