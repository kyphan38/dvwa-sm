NOTE: You have to follow steps step by steps

# Configure Apache2
ELK => Integration => Apache HTTP Server => Add Apache HTTP Server

- Integration name: apache
- New agent policy name: **Agent policy**  (remember this, you will use it for MariaDB)

**From default, do nothing**

Select Save and continue => Add Elastic Agent to your hosts => Run script

# Configure Mariadb

Note: You have to run the attached script **sudo chmod +x configure_db.sh && ./configure_db.sh** on the server to export logs
=> To check the log: cd /var/log/mysql && cat query.log

ELK => Integration => MySQL => Add MySQL

- Integration name: mysql
- (Existing hosts) Agent policy: **Agent policy** (similar to Apache configuration)

**From default**
- For **Collect logs from MySQL hosts**
  - MySQL error logs: *only one path*
    - **/var/log/mysql/query.log**
  - MySQL slowlog logs (log): turn off
- For **Collect metrics from MySQL hosts**
  - Settings:
    - username: dvwa
    - password: masterchef
  - Disable all MySQL galera_status_metrics, MYSQL performance metrics, MySQL status metrics

Select Save and continue => Save and deploy changes