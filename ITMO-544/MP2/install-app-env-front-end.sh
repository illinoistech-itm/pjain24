#!/bin/bash
cd /home/ubuntu
sudo apt-get -y update
echo "/////////////////////////////////////////////////////////////////installing apache2////////////////////////////////////////////////////"
sudo apt-get -y install apache2
echo "//////////////////////////////////////////////////////////////installing php///////////////////////////////////////////////////////////////"
sudo apt-get -y install php
echo "//////////////////////////////////////////////////////////////installing php-gd/////////////////////////////////////////////////////////////"
sudo apt-get -y install php-gd
echo "///////////////////////////////////////////////////////////////installing mysql-server////////////////////////////////////////////////////////"
sudo apt-get -y install mysql 
sudo apt-get -y install mysql-client
echo "////////////////////////////////////////////////////////////////installing php-mysql/////////////////////////////////////////////////////////"
sudo apt-get -y install php-mysql
echo "//////////////////////////////////////////////////////////////////installing php.2.xml////////////////////////////////////////////////////////"
sudo apt-get -y install php7.2.xml
echo "/////////////////////////////////////////////////////////////////////installing php-xml///////////////////////////////////////////////////"
sudo apt-get -y install php-xml
sudo apt-get -y install unzip zip
echo "/////////////////////////////////install python file.//////////////////////////////////////////////////////////////"
sudo apt-get install -y python3-pip python3-dev python3-setuptools
pip3 install boto3
pip3 install Pillow
echo "///////////////////////////////////////////////////////////////////// aws-cli///////////////////////////////////////////////////"

sudo apt-get -y install awscli

cd /home/ubuntu
pwd
echo "//////////////////////////////////////////////////////////////////////installing composer-setup////////////////////////////////////////////"
 php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
 php -r "if (hash_file('sha384', 'composer-setup.php') === 'a5c698ffe4b8e849a443b120cd5ba38043260d5c4023dbf93e1558871f1f07f58274fc6f4c93bcfd858c6bd0775cd8d1') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
sudo php composer-setup.php

cd /home/ubuntu
pwd
echo "///////////////////////////////////////////////compser-setup finished///////////////////////////////////////////////////////////////////////////////"
sudo php -d memory_limit=-1 composer.phar require aws/aws-sdk-php


echo "//////////////////////////////////////////////////// apache enable and start////////////////////////////////////////////////////////////////////////////////"
sudo systemctl enable apache2
sudo systemctl start apache2
cd /home/ubuntu
pwd
echo "/////////////////////////////////////////////////////////////////github repo cloneing ///////////////////////////////////////////////////////////////////////"
#git clone git@github.com:illinoistech-itm/pjain24.git
#sudo git clone https://palashjain2801:28011993p.j@github.com/illinoistech-itm/pjain24
sudo mkdir /root/.ssh
sudo cp /home/ubuntu/.ssh/config /root/.ssh
git clone git@github.com:illinoistech-itm/pjain24.git

echo "//////////////////////////////////////////////////////////////////copying index.php to /var/www/html///////////////////////////////////////////////////"
sudo cp pjain24/ITMO-544/MP2/Frontend/index.php /var/www/html/
sudo cp pjain24/ITMO-544/MP2/Frontend/submit.php /var/www/html/
sudo cp pjain24/ITMO-544/MP2/Frontend/gallery.php /var/www/html/
sudo cp pjain24/ITMO-544/MP2/Frontend/function.zip /home/ubuntu/

sudo cp pjain24/ITMO-544/MP2/config  ~/my.cnf
sudo cp pjain24/ITMO-544/MP2/config  /my.cnf
sudo cp pjain24/ITMO-544/MP2/config  /etc/my.cnf



 exit $RESULT                                                                                                                                            