#!/usr/bin/env bash
yum -y install httpd curl

#setenforce 0

systemctl start httpd
systemctl enable httpd

firewall-cmd --permanent --add-service=http
firewall-cmd --reload

#echo "<h1> This is a test website </h1>" >/var/www/html/index.html

if [ -e /var/www ]; then
        rm -rf /var/www/html
        ln -s /vagrant/html /var/www/html
fi