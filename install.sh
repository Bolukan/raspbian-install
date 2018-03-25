#!/bin/sh
BASEDIR="https://raw.githubusercontent.com/Bolukan/raspbian-install/master"

introduction() {
  echo ""
  echo "Installation"
  echo "============"
  echo "To download and start this script:"
  echo "$ cd ~"
  echo "$ wget $BASEDIR/install.sh"
  echo "$ chmod +x install.sh"
  echo ""
}

general_update() {
  echo ""
  echo "General update"
  echo "=============="
  sudo apt-get update
  sudo apt-get upgrade
}

install_webserver() {
  echo ""
  echo "Install nginx php-fpm sqlite3"
  echo "============================="
  # sudo apt-get install nginx php-fpm sqlite3

  cd /var/www/html
  sudo wget -N -nv $BASEDIR/var/www/html/index.php
  mkdir /var/www/html/css
  cd /var/www/html/css
  sudo wget -N -nv https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css
  mkdir /var/www/html/js
  cd /var/www/html/js
  sudo wget -N -nv https://code.jquery.com/jquery-3.2.1.slim.min.js
  sudo wget -N -nv https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js
  sudo wget -N -nv https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js

  cd /etc/nginx/sites-available
  sudo wget -N -nv $BASEDIR/etc/nginx/sites-available/default

  sudo systemctl restart nginx
}

introduction
# general_update
install_webserver
