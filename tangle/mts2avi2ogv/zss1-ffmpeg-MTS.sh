#!/bin/sh

ffmpeg -i 02462.MTS -b 18000k -ac 2 -ab 192k -deinterlace -s 640x350 02462.avi 
ffmpeg -i 02463.MTS -b 18000k -ac 2 -ab 192k -deinterlace -s 640x350 02463.avi 
ffmpeg -i 02464.MTS -b 18000k -ac 2 -ab 192k -deinterlace -s 640x350 02464.avi 
ffmpeg -i 02465.MTS -b 18000k -ac 2 -ab 192k -deinterlace -s 640x350 02465.avi 
ffmpeg -i 02466.MTS -b 18000k -ac 2 -ab 192k -deinterlace -s 640x350 02466.avi 
ffmpeg -i 02467.MTS -b 18000k -ac 2 -ab 192k -deinterlace -s 640x350 02467.avi 
ffmpeg -i 02468.MTS -b 18000k -ac 2 -ab 192k -deinterlace -s 640x350 02468.avi 
ffmpeg -i 02469.MTS -b 18000k -ac 2 -ab 192k -deinterlace -s 640x350 02469.avi 
ffmpeg -i 02461.MTS -b 18000k -ac 2 -ab 192k -deinterlace -s 640x350 02461.avi 

ffmpeg -i 02470.MTS -b 18000k -ac 2 -ab 192k -deinterlace -s 640x350 02470.avi 

ffmpeg -i 02472.MTS -b 18000k -ac 2 -ab 192k -deinterlace -s 640x350 02472.avi 
ffmpeg -i 02473.MTS -b 18000k -ac 2 -ab 192k -deinterlace -s 640x350 02473.avi 
ffmpeg -i 02474.MTS -b 18000k -ac 2 -ab 192k -deinterlace -s 640x350 02474.avi 

echo "all MTS ffpeg ed!"

