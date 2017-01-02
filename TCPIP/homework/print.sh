#!/bin/bash



DIRNAME=`pwd`


find . -name "*.ppt" | sort | while read line
do
    FULLFILE=`ls -alh $line|awk '{print $9,$5}'` > /dev/null
    echo   "<li><a target=\"_blank\" href='./TCPIP/homework/${line#./}'>${FULLFILE#./}</a></li>"
done
