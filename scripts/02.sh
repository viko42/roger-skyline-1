#!/bin/sh
apt-get update -y >> /var/log/update_script.log && apt-get upgrade -y >> /var/log/update_script.log
echo "0 4 * * 1 /bin/sh /${PWD##*/}/02.sh" > cronfile
crontab -u root cronfile
