#!/bin/bash
mkdir temp
cd temp
wget https://dl-ssl.google.com/dl/linux/direct/mod-pagespeed-stable_current_amd64.deb
sudo dpkg -i mod-pagespeed-stable_current_amd64.deb
sudo apt-get -f install -y
sudo /etc/init.d/apache2 restart
