#!/bin/sh

echo "start mysql"
/etc/init.d/mysql start

echo "start change mysqladmin password"
/usr/bin/mysqladmin -u root password '123456'

echo "start statement"
mysql --user=root --password=123456 --execute="CREATE USER joomla; CREATE DATABASE joomla;"

mysql --user=root --password=123456 --execute="GRANT ALL ON joomla.* TO joomla;"

echo "stop mysql"
/etc/init.d/mysql stop
