#!/bin/sh

echo "Installation"
echo "============"
BASEDIR="https://raw.githubusercontent.com/Bolukan/raspbian-install/master"
echo "To download and start this script:"
echo "$ cd ~"
echo "$ wget {$BASEDIR}/install.sh"
echo "$ chmod +x install.sh"
echo ""

echo "General update"
sudo apt-get update
sudo apt-get upgrade

echo "Install nginx php-fpm sqlite3"
sudo apt-get install nginx php-fpm sqlite3
wget {$BASEDIR}/var/www/html/index.php /var/www/html/.
wget {$BASEDIR}/etc/nginx/sites-available/default /etc/nginx/sites-available/.
