#!bin/sh

rc default
/etc/init.d/mariadb setup
rc-service mariadb start 
mysql -u root mysql < /etc/init.sql
mysql -u root wordpress  < /etc/wordpress.sql
rc-service mariadb stop
/usr/bin/mysqld_safe