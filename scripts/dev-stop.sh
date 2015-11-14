#!/bin/bash

base=/Users/elink/Documents/Sandlion/Products/ADNAT
sitelogs=/Users/elink/Sites/logs/

cd $base

echo "Stop mongo"
killall mongod
/bin/ps -eaf | /usr/bin/grep mongo

echo "Stop nginx"
/opt/local/sbin/nginx -s stop
/bin/ps -eaf | /usr/bin/grep nginx

echo "Stop api server (playframework)"
cd "$base/src/api"
ps -aef |grep "playframework" |head -n 1|cut -b7-12 > play.pid
kill -9 `cat ./play.pid`
ps -aef |grep "playframework" |head -n 1|cut -b7-12 > play.pid
kill -9 `cat ./play.pid`
ps -aef |grep "playframework" |head -n 1|cut -b7-12 > play.pid
kill -9 `cat ./play.pid`
/bin/ps -eaf | /usr/bin/grep play
rm play.pid




