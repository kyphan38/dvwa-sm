Users only access logs, discovery, dashboard, rules

# Roles first
Roles => Create role

From default,
- Role name: sm_user
- Index privileges:
  - Indices: * / logs-apache.access-default, logs-mysql.slowlog-default
  - Privileges: read
- Kibana:
  - Space: Default
  - Analytics: Read for Discover and Dashboard
  - Security: Read for Security

# Users
Users => Create user

From default,
- Username: username
- Password: password
- Confirm password: password
- Roles: sm_user