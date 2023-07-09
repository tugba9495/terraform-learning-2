#!/bin/bash
apt-get update -y
apt-get install -y apache2
systemctl start apache2
systemctl enable apache2
echo "Welcome to the EC2 instance!" > /var/www/html/index.html
