#!/bin/bash

echo ""
echo ""
echo ""
echo "***** touch ***** "
cd ./touch
./prepush.sh
cd ..
echo ""
echo "***** www ***** "
cd ./www
./prepush.sh
cd ..
