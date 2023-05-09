#!/bin/sh

if [ -e updateonce ]
then
	echo ""
else
	echo "" > updateonce
	sudo apt-get update
	sudo apt-get fullupgrade
	sudo shutdown -rf now
fi

if [ -e redownloaded ]
then
	echo ""
else
        rm JMRI.4.26+R381c8dfc32.tgz 
fi


if [ -e JMRI.4.26+R381c8dfc32.tgz ]
then
	echo ""
else
	wget https://github.com/JMRI/JMRI/releases/download/v4.26/JMRI.4.26+R381c8dfc32.tgz
	rm -rf JMRI
	tar xvzf JMRI.4.26+R381c8dfc32.tgz

	#get cats
        cd /home/`whoami`
        wget http://cats4ctc.wikidot.com/local--files/main:downloads/release2046.zip 

        cd JMRI
        unzip /home/`whoami`/release2046.zip
        cd /home/`whoami`
        chmod +x JMRI/cats.csh
        rm release2046.zip
	echo "" > redownloaded 
fi


