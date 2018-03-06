Based on https://thepi.io/how-to-set-up-a-web-server-on-the-raspberry-pi/

## Install Nginx
```
sudo apt-get install nginx
```
sudo nano /etc/nginx/available-sites/default
# Add php
```
sudo systemctl restart nginx
```

## Install MySQL
```
sudo apt-get install mysql-server
sudo mysql_secure_installation
```
