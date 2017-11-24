if [ -f ./md5cron ]; then
	result=$(variable=$(md5sum /etc/crontab) && diff md5cron <(echo $variable))
	if [ -n "$result" ]; then
		echo "md5cron modified "$result  | mail -s "alert" root@admin.com
	fi
else
	md5sum /etc/crontab > md5cron
fi;
#echo "0 0 * * * bash 04" > cronfile;
#rontab -u root cronfile
