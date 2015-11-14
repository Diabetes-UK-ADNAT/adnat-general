#!/bin/bash
base=/Users/elink/Documents/Sandlion/Products/ADNAT

echo "Start api server (playframework)"
cd "$base/src/api"
rm "$base/src/api/logs/application.log"
./playframework/play

