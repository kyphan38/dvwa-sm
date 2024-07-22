# How to attack
You need to get PHPSESSID of DVWA
- F12 => Application => Cookies => http://[...] => PHSESSID value

Change IP of website in attack.sh script
- resolve=localhost:[IP of DVWA]
- For example: resolve=localhost:34.229.153.186