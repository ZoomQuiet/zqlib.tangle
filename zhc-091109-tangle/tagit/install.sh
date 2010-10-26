#!/bin/sh

if [ -f tagit ]
then
  rm -f tagit
fi

BASH_PATH=`which bash`
echo Checking bash
if [ -z $BASH_PATH ]
then
  echo "tagit depend on bash which is not install on your computer, sorry. ;-)"
  exit
else
  echo OK
fi

echo "Please specify the script install directory, press enter to use default[/usr/local/sbin]:"
read PREFIX

if [ -z "$PREFIX" ]
then
  echo "using default ...OK\n"
  PREFIX="/usr/local/sbin"
else
  until [ -d $PREFIX ]
  do
    echo directory does not exsist
    echo "Please specify the script install directory, press enter to use default[/usr/local/sbin]:"
    read PREFIX
  done
fi

echo "Please specify the tags directory, press enter to use default[\$HOME/.tagit_tags]"
read TAG_PATH

if [ -z "$TAG_PATH" ]
then
  echo "using default ...OK\n"
  TAG_PATH="$HOME/.tagit_tags"
else
  until [ -d $TAG_PATH ]
  do
    echo directory does not exsist
    echo "Please specify the script install directory, press enter to use default[$HOME/.tagit_tags:]"
    read TAG_PATH
  done
fi

mkdir -pv $TAG_PATH

#now build script
echo building script
echo "#!$BASH_PATH" >> tagit
echo "PREFIX=$PREFIX" >> tagit
echo "TAG_PATH=$TAG_PATH" >> tagit
cat tagit_template >> tagit
chmod 775 tagit
cp tagit $PREFIX
echo done
#cp ./tagit $PREFIX
