#!/bin/bash

sudo tee -a /etc/mysql/my.cnf << END

[mysqld]
general_log_file = /var/log/mysql/query.log
general_log = 1
slow_query_log = 1
slow_query_log_file = /var/log/mysql/slow_query.log
long_query_time = 5
END

sudo service mysql restart