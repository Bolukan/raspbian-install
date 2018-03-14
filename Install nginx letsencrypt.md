Based on https://thepi.io/how-to-set-up-a-web-server-on-the-raspberry-pi/  
https://www.raspberrypi.org/documentation/remote-access/web-server/nginx.md

## Install Nginx
```
sudo apt-get install nginx
```
## Install PHP
```
sudo apt-get install php-fpm
```
### Change default to enable php and some index.php
sudo nano [/etc/nginx/available-sites/default](etc/nginx/available-sites/default)
sudo nano [/var/www/html/index.php](var/www/html/index.php)
```
### Restart server
```
sudo systemctl restart nginx
```
Check using your browser

## Install MySQL
```
sudo apt-get install mysql-server
sudo mysql_secure_installation
```
