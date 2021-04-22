#!/bin/bash

PASSWD="$(zenity --password --title=Authentication)\n"

if [ -e /etc/startpages/wow ];
then
    rm -rf wow
    echo -e $PASSWD | sudo -A cp -r Peux-Startpages/*/ /etc/startpages/
    rm -rf /tmp/fetcher/Peux-Startpages

else
    echo -e $PASSWD | sudo -A mkdir /etc/startpages && sudo cp -r Peux-Startpages/*/ /etc/startpages/
    rm -rf /tmp/fetcher/Peux-Startpages
fi

