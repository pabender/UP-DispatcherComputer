#!/bin/sh

unset http_proxy
unset https_proxy
unset ftp_proxy

# Add an alias ip address to make sure the server can be found.
#sudo ip address add 192.168.1.99/24 dev eth0

#run updates
cd /home/`whoami`
./update.sh

./StartUp-HeadedApp.sh

