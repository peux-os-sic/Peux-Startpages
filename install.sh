#!/bin/bash

PASSWD="$(zenity --password --title=Authentication)\n"

if [ -e /etc/startpages/wow/index.html ];
then
    rm -rf wow
    echo -e $PASSWD | sudo -A cp -r */ /etc/startpages/
    cd ../
    rm -rf Peux-Startpages

else
    echo -e $PASSWD | sudo -A mkdir /etc/startpages && sudo cp -r */ /etc/startpages/
    cd ../
    rm -rf Peux-Startpages
fi

