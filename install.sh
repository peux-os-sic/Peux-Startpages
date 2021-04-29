#!/bin/bash

###########################################################
# Author - DN-debug
# Description - Peux OS startpages' copy script
###########################################################

if zenity --question --text="Want to proceed?"
then 
    PASSWD="$(zenity --password --title=Authentication)\n"

    if [ -e /etc/startpages/wow/index.html ];
    then
        echo "running if"
        cd ../
        rm -rf Peux-Startpages/wow
        echo -e $PASSWD | sudo -S cp -r Peux-Startpages/*/ /etc/startpages/
    
    else
        echo "running else"
        cd ../
        echo -e $PASSWD | sudo -S mkdir /etc/startpages && sudo cp -r Peux-Startpages/*/ /etc/startpages/
    fi

else
    notify-send "Operation skipped!"
fi

rm -rf /tmp/fetcher/Peux-Startpages
notify-send "Done!"