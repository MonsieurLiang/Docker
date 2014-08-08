#!/bin/bash

groupadd mysql

useradd -g mysql mysql

/etc/init.d/apache2 start

/etc/init.d/mysql start

/bin/bash -c $@
