#!/bin/bash

base=/Users/elink/Documents/Sandlion/Products/ADNAT
sitelogs=/Users/elink/Sites/logs/

cd $base

echo "Start mongo"
./mongodb/bin/mongod --dbpath ./mongodb/data/ &
sleep 1
/bin/ps -eaf | /usr/bin/grep mongo

echo "Start nginx"
/opt/local/sbin/nginx -s stop
/opt/local/sbin/nginx
/bin/ps -eaf | /usr/bin/grep nginx


echo "Open site" 
/Applications/WebKit.app/Contents/MacOS/WebKit &


# start play last because console likes to be in foreground
echo "Start api server (playframework)"
cd "$base/src/api"
rm "$base/src/api/logs/application.log"
./playframework/play

