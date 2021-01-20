#!/bin/bash
sudo yum install wget vim git unzip -y
wget https://dev.mysql.com/get/mysql57-community-release-el7-9.noarch.rpm
md5sum mysql57-community-release-el7-9.noarch.rpm
sudo rpm -ivh mysql57-community-release-el7-9.noarch.rpm
sudo yum install mysql-server -y
sudo systemctl start mysqld
sudo systemctl enable mysqld
sudo grep 'temporary password' /var/log/mysqld.log
echo "please paste this password in command:- sudo mysql_secure_installation "
