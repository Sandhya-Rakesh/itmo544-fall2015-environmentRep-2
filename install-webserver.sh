#!bin/bash

sudo apt-get update -y
sudo apt-get install -y apache2 git php5 php5-curl curl mysql-client php5-mysql php5-imagick

sudo service apache2 reload

curl -sS https://getcomposer.org/installer | sudo php &> /tmp/getcomposer.txt
sudo php composer.phar require aws/aws-sdk-php &> /tmp/runcomposer.txt

git clone https://github.com/SandhyaGupta/itmo544-fall2015-applicationRep-2.git

sudo mv ./itmo544-fall2015-applicationRep-2/content /var/www/html/content
sudo mv ./itmo544-fall2015-applicationRep-2/lib /var/www/html/lib
sudo mv ./itmo544-fall2015-applicationRep-2/*.html /var/www/html
sudo mv ./itmo544-fall2015-applicationRep-2/*.php /var/www/html
sudo mv vendor /var/www/html &> /tmp/movevendor.txt


echo "Hello!" > /tmp/hello.txt
