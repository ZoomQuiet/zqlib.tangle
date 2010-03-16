#!/bin/sh
version="mencoder-AVI2ogv.sh v10.3.16"
offset="-1"
ofFROM=$1
offTO=$2

echo "###$version::start@ " `date +"%Y/%m/%d %H:%M:%S"` 
while [ $ofFROM -le $offTO ]
    do
    vname=0$ofFROM
    echo "trying:: $vname.avi"
    mencoder avi/$vname.avi -o ogv/$vname.ogv -ovc lavc -oac mp3lame
    ofFROM=`expr $ofFROM + 1`
    done

echo "###::end@ " `date +"%Y/%m/%d %H:%M:%S"` 
echo "usage mencoder make all avi 2 ogv ed!"

echo
exit  0

