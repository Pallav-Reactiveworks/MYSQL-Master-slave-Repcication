#! /bin/bash

if [ "$MYSQL_ROOT_PASSWORD" ]; then 
	mysql -uroot -p$MYSQL_ROOT_PASSWORD -AN -e "GRANT ALL PRIVILEGES ON *.* TO root@'%' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD' WITH GRANT OPTION"
	mysql -uroot -p$MYSQL_ROOT_PASSWORD -AN -e 'flush privileges;'
else
 echo "Please give the MYSQL_ROOT_PASSWORD"
fi
