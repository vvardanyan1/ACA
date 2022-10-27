#!/bin/bash

cd /home/vvardanyan/ACA/Lesson_10

echo "$(ip address)" >> "log/testlog-$(date "+%F_%T")"
echo "################################################" >> "log/testlog-$(date "+%F_%T")"
echo "$(uptime)" >> "log/testlog-$(date "+%F_%T")"
echo "################################################" >> "log/testlog-$(date "+%F_%T")"
echo "$(lastlog)" >> "log/testlog-$(date "+%F_%T")"
echo "################################################" >> "log/testlog-$(date "+%F_%T")"
echo "$(du -h)" >> "log/testlog-$(date "+%F_%T")"
echo "################################################" >> "log/testlog-$(date "+%F_%T")"
echo "$(df -h )" >> "log/testlog-$(date "+%F_%T")"



for i in log
do
	find -type f -name 'testlog-*' -mmin +600 -exec rm -v {} \;
done
