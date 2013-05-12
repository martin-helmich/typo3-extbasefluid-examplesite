#!/bin/bash

APACHE_PACKAGES="apache2"
PHP_PACKAGES="php5 libapache2-mod-php5 php5-curl php5-gd php5-tidy php5-imagick php5-mcrypt php5-xdebug php5-mysqlnd"
MYSQL_PACKAGES="mysql-server mysql-client"

debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password password supersecret'
debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password_again password supersecret'

apt-get update
apt-get install -yq ${APACHE_PACKAGES} ${PHP_PACKAGES} ${MYSQL_PACKAGES}

a2enmod rewrite

echo '<VirtualHost *:80>
	DocumentRoot /vagrant/html
	<Directory />
		Options FollowSymLinks
		AllowOverride None
	</Directory>
	<Directory /vagrant/html>
		Options Indexes FollowSymLinks MultiViews
		AllowOverride All
		Order allow,deny
		allow from all
	</Directory>

	ErrorLog ${APACHE_LOG_DIR}/error.log

	# Possible values include: debug, info, notice, warn, error, crit,
	# alert, emerg.
	LogLevel warn

	CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>' >> /etc/apache2/sites-available/vagrant

a2dissite default
a2ensite vagrant

/bin/sed -i 's,www-data,vagrant,g' /etc/apache2/envvars
/bin/chown vagrant:vagrant /var/lock/apache2
/bin/chown vagrant:vagrant /var/log/apache2 -R

/etc/init.d/apache2 restart

MYSQL="mysql -uroot -psupersecret -ss"

${MYSQL} -e 'CREATE DATABASE typo3 CHARSET utf8 COLLATE utf8_unicode_ci;'
${MYSQL} -e 'GRANT ALL PRIVILEGES ON typo3.* TO typo3@localhost IDENTIFIED BY "typo3";'
${MYSQL} < /vagrant/vagrant/setup.sql
