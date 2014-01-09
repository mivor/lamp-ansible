# Lamlp box ansible playbook

## Install

- Install `apache2` -> restart it

- Install `php5 libapache2-mod-php5 php5-mcrypt php5-mysql`

- Instapp mysql `mysql-server libapache2-mod-auth-mysql php5-mysql`

- Install phpmyadmin

## Config

- Add `ServerName localhost` -> /etc/apache2/apache2.conf && /etc/apache2/conf.d/fqdn

- Optional: Add virtualhost

- Set `DocumentRoot` && `Directory` to site directory -> restart it

- Enable php5 `sudo a2enmod php5` -> restart apache2

- Set php.ini to development version:

`sudo mv /etc/php5/apache2/php.ini /etc/php5/apache2/php.ini.bak`

`sudo cp -s /usr/share/php5/php.ini-development /etc/php5/apache2/php.ini`

- Optional: Increase php5 `memory_limit`

- Set up mysql root password

`mysqladmin -u root -p password yourpassword`

`SET PASSWORD FOR 'root'@'localhost' = PASSWORD('yourpassword');`

- Copy phpmyadmin config file

```PHP
/* Server parameters */
$cfg['Servers'][1]['auth_type'] = 'config';
$cfg['Servers'][1]['user'] = 'root';
$cfg['Servers'][1]['password'] = 'root';
$cfg['Servers'][1]['host'] = 'localhost';
```


