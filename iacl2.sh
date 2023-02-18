#!/bin/bash

echo "atyalizar server"

apt-get update
apt-get upgrade -y

echo "instalar"

apt-get intall apache2 -y
apt-get install unzip -y

echo "navigar ate"

cd /tmp
wgat https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "desconpactar arquivo"

unzip main.zip
cd /linux-site-dio-main
cp -R * /var/www/html/

echo "FIM"
