#!/bin/bash

PASSWD="$(zenity --password --title=Authentication)\n"

if [ -e /etc/startpages/wow/index.html ];
then
    echo "running if"
    cd ../
    rm -rf Peux-Startpages/wow
    echo -e $PASSWD | sudo -S cp -r Peux-Startpages/*/ /etc/startpages/
    rm -rf Peux-Startpages

else
    echo "running else"
    cd ../
    echo -e $PASSWD | sudo -S mkdir /etc/startpages && sudo cp -r Peux-Startpages/*/ /etc/startpages/
    rm -rf Peux-Startpages
fi

