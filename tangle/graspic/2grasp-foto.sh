#!/bin/bash
###!/bin/sh
version="2grasp-foto v0.7 080502"
offset="-1"
#today="`date -d "$offset day" "+%y%m%d"`"
ofFROM=$1
offTO=$2
#echo $ofFROM,$offTO
#cmdSudo=$( which sudo)
cmdCurl=$( which curl)
cmdWget=$( which wget)
cmdGrep=$( which grep)
cmdCut=$( which cut)
cmdCat=$( which cat)
#cmdZcat=$( which zcat)#cmdLn=$( which ln)#cmdUniq=$( which uniq)#cmdSort=$( which sort)
cmdPython=$( which python)
#"/opt/ActivePython/bin/python2.5"
logroot="./logs"
exproot="./Official-$ofFROM-$offTO"
SEEDWORD="Best-use-of-Live-Journal"
WGRASP="$cmdWget -t 7 -w 3 -T 5 -c -N --directory-prefix=$exproot"
WGRASPSH="2wget-i-fotos.sh"
echo "###$version::start@ " `date +"%Y/%m/%d %H:%M:%S"` 

### download as html 1st
CAGNET="Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)"
SEEDURL="http://www.yayhooray.com/thread/115679/Best-use-of-Live-Journal-\(Official\)"
AIMPATH="thread"
AIMSEED="$AIMPATH/$SEEDWORD" #-A '$CAGNET' 
DOCurl="$cmdCurl -o $AIMSEED-#1.html $SEEDURL?page=[$ofFROM-$offTO]"
echo "doing.. \n $DOCurl"
$DOCurl

### parsing and wget all goto 2nd
#for i in {1..100}
while [ $ofFROM -le $offTO ]
    do
    
    #echo 'parsing:: '$SEEDWORD'_'$i'.html'
    echo 'parsing:: $AIMSEED-$ofFROM.html'
    #$cmdCat $SEEDWORD'_'$ofFROM'.html' \
    $cmdCat $AIMSEED-$ofFROM.html \
    | grep "<img src=" | grep ' class="post"' \
    | cut --delimiter='"' -f6 | grep ".jpg" \
    | cut -d? -f1 > $AIMSEED-$ofFROM.purli
    #| cut -d? -f1 > "$SEEDWORD-$i.purli"
    
    #$WGRASP -i $SEEDWORD-$i.purli &
    $WGRASP -i $AIMSEED-$ofFROM.purli &
    #echo $WGRASP -i "$SEEDWORD-$i.purli &" >> $WGRASPSH
    
    ofFROM=`expr $ofFROM + 1`
    done
    
#chmod +x *.sh
#echo ">>>wgets to grasp all foto@ " `date +"%Y/%m/%d %H:%M:%S"`
#cat $WGRASPSH
#./$WGRASPSH

echo "###::end@ " `date +"%Y/%m/%d %H:%M:%S"` 
echo "download all can grasp fotos!"

echo
exit  0

