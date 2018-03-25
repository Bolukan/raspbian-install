### Install Nginx, PHP-FPM and Sqlite3
```
sudo apt-get install nginx php-fpm sqlite3
```
##### Change default to enable php and add an index.php to test
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
