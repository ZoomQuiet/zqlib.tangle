#!/bin/sh
version="ffmpeg-MTS2AVI.sh v10.3.15"
offset="-1"
ofFROM=$1
offTO=$2

echo "###$version::start@ " `date +"%Y/%m/%d %H:%M:%S"` 
while [ $ofFROM -le $offTO ]
    do
    #echo 'parsing:: '$SEEDWORD'_'$i'.html'
    echo "trying:: 0$ofFROM.MTS"
    vname=0$ofFROM
    #ffmpeg -i $vname.MTS -b 18000k -ac 2 -ab 192k -deinterlace -s 640x350 $vname.avi 
    
    echo #vname
    
    ofFROM=`expr $ofFROM + 1`
    done

echo "###::end@ " `date +"%Y/%m/%d %H:%M:%S"` 
echo "usage ffmpeg make all MTS 2 AVI ed!"

echo
exit  0

