#!/bin/sh

#check for updates
cd /home/`whoami`
#just in case there are local changes, stash them.
git stash
git pull

#update jmri
cd /home/`whoami`
./updatejmri.sh

# update java
#cd /home/`whoami`
#./updatejava.sh

