#!/usr/bin/env bash
DBNAME=vagrant
DBPASSWD=toor

apt-get update
apt-get upgrade

apt-get install -y software-properties-common -y

#mysql
apt-get install debconf-utils -y

debconf-set-selections <<< "mysql-server mysql-server/root_password password $DBPASSWD"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password $DBPASSWD"

apt-get -y install mysql-server

service mysql restart

mysql -uroot -p$DBPASSWD -e "CREATE DATABASE $DBNAME"
mysql -uroot -p$DBPASSWD $DBNAME < /home/vagrant/code/seeds/users.sql

#nginx
add-apt-repository ppa:nginx/stable  -y

apt-get update

apt-get install nginx -y 

systemctl enable nginx.service

cat /home/vagrant/code/nginx > /etc/nginx/sites-available/default
rm -rf /var/www/html
ln -fs /home/vagrant/code/src /var/www

service nginx restart

#php
add-apt-repository ppa:ondrej/php -y

apt-get update

apt-get install php7.3-cli php7.3-fpm php7.3-curl php7.3-gd php7.3-mysql php7.3-mbstring zip unzip  -y

systemctl enable php7.3-fpm.service

