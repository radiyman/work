#!/usr/bin/env bash

apt update
apt install -y nginx
ufw allow 'Nginx HTTP'
apt install -y php7.2-fpm
apt install -y php-mysql
### при использовании vagrant halt vagrant up  сервисы  не видят паку /vagrant и не могут запустится 
## приходится запускать вручную. как побороть пока не нашел
# Заменяем настройки php-fpm на наши
#if ! [ -L /etc/php/7.2/fpm ]; then
#  service php7.2-fpm stop	
#  rm -rf /etc/php/7.2/fpm
#  ln -fs /vagrant/settings/php/7.2/fpm /etc/php/7.2/fpm
#  service php7.2-fpm start
#fi
# Заменяем настройки nginx на наши
#if ! [ -L /etc/nginx/sites-available/default ]; then
# rm -f /etc/nginx/sites-available/default
## ln некоректно работает с файлами без расширения
# cp -fs /vagrant/settings/sites-available/default /etc/nginx/sites-available/default
#fi
#if ! [ -L /etc/nginx/nginx.conf ]; then
#  rm -f /etc/nginx/nginx.conf
#  ln -fs /vagrant/settings/nginx/nginx.conf /etc/nginx/nginx.conf
#fi
# Копируем настройки PHP
cp -f /vagrant/settings/php/7.2/fpm/php.ini /etc/php/7.2/fpm/php.ini
cp -f /vagrant/settings/php/7.2/fpm/php-fpm.conf /etc/php/7.2/fpm/php-fpm.conf
# Копируем настройки nginx
cp -f /vagrant/settings/nginx/nginx.conf /etc/nginx/nginx.conf
cp -f /vagrant/settings/nginx/sites-available/default /etc/nginx/sites-available/default
# Копируем сайт
cp -f /vagrant/html/selectusers.php /var/www/html/selectusers.php 
apt install -y mysql-server
echo 'Создаем базу mydb и пользователя oleg: /vagrant/mydb.sql'
mysql </vagrant/mydb.sql
echo 'Импортируем дамп базы mydb: /vagrant/dump.sql'
mysql </vagrant/dump.sql
service php7.2-fpm restart
service nginx restart