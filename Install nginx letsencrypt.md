Based on https://thepi.io/how-to-set-up-a-web-server-on-the-raspberry-pi/  
https://www.raspberrypi.org/documentation/remote-access/web-server/nginx.md

##### Uncomment en_GB.UTF-8 and nl-NL.UTF-8 and regenerate
```
sudo nano /etc/locale.gen
sudo locale-gen
```

### Install Nginx, PHP (7.0) and Sqlite3
```
sudo apt-get install nginx php-fpm sqlite3
```
##### Change default to enable php and create some index.php
* [/etc/nginx/available-sites/default](etc/nginx/available-sites/default)
* [/var/www/html/index.php](var/www/html/index.php)
```
sudo nano /etc/nginx/available-sites/default
sudo nano /var/www/html/index.php
```
### Restart server
```
sudo systemctl restart nginx
```
Check using your browser
