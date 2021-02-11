#!/bin/sh

# adduser -D -g 'snorthmo' snorthmo
# echo -e "snorthmo\nsnorthmo" | passwd snorthmo
# chown -R snorthmo:snorthmo /var/lib/nginx
# chown -R snorthmo:snorthmo /var/www
# chmod 755 /var/www
ssh-keygen -A
# /usr/sbin/sshd -D 
# nginx -g "daemon off;"
/usr/bin/supervisord -c /etc/supervisor.conf
# nginx -g "daemon off;"
# /usr/sbin/sshd -D
# service mysql start
# mysql < /var/www/init.sql
# service php7.3-fpm start
# bash