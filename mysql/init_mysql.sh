#!/bin/sh

echo "start mysql"
/etc/init.d/mysql start

echo "start statement"
mysql --execute="CREATE USER joomla;CREATE DATABASE joomla;"

mysql --execute="GRANT ALL ON joomla.* TO joomla;"

echo "stop mysql"
/etc/init.d/mysql stop

exit 0
