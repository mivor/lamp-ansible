# Lamlp box ansible playbook

## Install

- Install apache2 -> restart it

- Install php5

## Config

- Add `ServerName localhost` -> /etc/apache2/apache2.conf && /etc/apache2/conf.d/fqdn

- Optional: Add virtualhost

- Set `DocumentRoot` && `Directory` to site directory -> restart it

- Enable php5 `sudo a2enmod php5` -> restart apache2

- Set php.ini to development version:

`sudo mv /etc/php5/apache2/php.ini /etc/php5/apache2/php.ini.bak`

`sudo cp -s /usr/share/php5/php.ini-development /etc/php5/apache2/php.ini`


