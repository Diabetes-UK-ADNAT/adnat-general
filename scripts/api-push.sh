#!/bin/bash

date
echo "Pushing adnat-api "

#--dry-run \
#--exclude '*sh' \
#--exclude 'assets' \
#--exclude 'db' \
#--exclude '*swp' \
#--exclude '*~'  \
#--include 'files' \
#--exclude 'sdk'  \
rsync -v -e "ssh -p 12222 -x -a -l ubu-install-jeos"     \
--include '.htaccess' \
--exclude '.DS_Store'  \
-aruzitPL  \
api/target/staged \
67.18.182.74:adnat/api/

rsync -v -e "ssh -p 12222 -x -a -l ubu-install-jeos"     \
--include '.htaccess' \
--exclude '.DS_Store'  \
-aruzitPL  \
api/target/start \
67.18.182.74:adnat/api/

date
