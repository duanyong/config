#!/bin/bash

#
sudo apt-get install -y fcitx-table-wubi git mysql-server mysql-client php5 php5-cli php5-cgi php5-fpm php5-curl php5-mysql php5-memcache php-apc php-pear nginx ssh tree samba smbfs

#pman
sudo pear channel-update doc.php.net
sudo pear install doc.php.net/pman
pear install MDB2_Driver_mysql-1.5.0b3


#vim 
sudo apt-get install vim meld cscope exuberant-ctags


  
#sudo apt-get build-dep -y autoconf libtool gobjc++ libxml2-dev zlib1g-dev


