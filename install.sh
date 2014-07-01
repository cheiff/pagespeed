#!/bin/bash
PACKAGE="mod-pagespeed-stable_current_amd64.deb"
mkdir temp
cd temp
wget https://dl-ssl.google.com/dl/linux/direct/$PACKAGE
sudo dpkg -i $PACKAGE
sudo apt-get -f install -y
sudo /etc/init.d/apache2 restart
chown 999.999 /var/cache/mod_pagespeed
cd ..
rm temp/ -rf

