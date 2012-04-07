#!/bin/bash

#获取用户系统版本号参数（1110或者1204等）。
version=$1

path=`pwd`

if [ -d "${pwd}\/${version}" ]; then
    echo "we are need ubuntu release number. eg 1110 or 1204, please check it!"
fi
echo "${pwd}/${version}"

exit


#得到当前脚本所在目录


#first update source.list
sudo cat source/sources.list > /etc/apt/sources.list
sudo apt-get update && sudo apt-get upgrade -y



#use fcitx
sudo apt-get install -y fcitx-table-wubi && im-switch -s fcitx


#
sudo apt-get install -y git mysql-server mysql-client php5 php5-cli php5-cgi php5-fpm php5-curl php5-mysql php5-memcache php-apc php-pear nginx ssh openssh-server openssh-client tree samba smbfs language-pack-zh vim meld cscope exuberant-ctags 

#pman
sudo pear channel-update doc.php.net
sudo pear install doc.php.net/pman
pear install MDB2_Driver_mysql-1.5.0b3


#开始配置系统

#1、修改系统字体
sudo apt-get install -y unrar zip p7zip
cd fonts && tar -jxf msyh.ttf.jz2

cd /usr/share/fonts/truetype/ && sudo mkdir msyh && sudo mv msyh.ttf /usr/share/fonts/truetype/msyh &&

  
#sudo apt-get build-dep -y autoconf libtool gobjc++ libxml2-dev zlib1g-dev



