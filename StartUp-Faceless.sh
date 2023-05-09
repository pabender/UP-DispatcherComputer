#!/bin/bash
unset https_proxy
unset http_proxy
unset ftp_proxy

# Add an alias ip address to make sure the server can be found.
sudo ip address add 192.168.1.99/24 dev eth0

cd /home/`whoami`
./update.sh

#start jmri faceless 
cd /home/`whoami`/JMRI
./JmriFaceless -p /home/`whoami`/.jmri/LenzSimulatorAndCMRI.jmri
