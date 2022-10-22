# downgrade php to 7.4

# Enable PPA for PHP 7.4 in your system and install it.
sudo add-apt-repository ppa:ondrej/php
sudo apt update
 
sudo apt install php7.4
sudo apt install php7.4-cli php7.4-common php7.4-json php7.4-opcache php7.4-mysql php7.4-mbstring php7.4-curl php7.4-zip php7.4-fpm php7.4-intl php7.4-simplexml
 
# a2dismod disables the php8.0 module by removing those symlinks.
sudo a2dismod php8.0
 
# a2enmod enables php7.4 module within the apache2 configuration.
sudo a2enmod php7.4

# sudo a2enmod proxy_fcgi setenvif
# sudo a2enconf php7.4-fpm
 
# Restart apache2 service.
sudo service apache2 restart  
 
# Set alternative name path.
sudo update-alternatives --set php /usr/bin/php7.4
sudo update-alternatives --set phar /usr/bin/phar7.4
sudo update-alternatives --set phar.phar /usr/bin/phar.phar7.4
sudo update-alternatives --set phpize /usr/bin/phpize7.4
sudo update-alternatives --set php-config /usr/bin/php-config7.4
