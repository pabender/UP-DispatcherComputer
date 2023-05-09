#!/bin/sh
unset https_proxy
unset http_proxy
unset ftp_proxy

# Add an alias ip address to make sure the server can be found.
#sudo ip address add 192.168.1.99/24 dev eth0

#curl https://www.dataplicity.com/fz6048no.py | sudo python
#sudo ln -s /usr/lib/systemd/system/vncserver-x11-serviced.service /etc/systemd/system/multi-user.target.wants/vncserver-x11-serviced.service

cd /home/`whoami`
./update.sh

cd /home/`whoami`/JMRI
#./PanelPro
./cats.csh
