#!/bin/bash



DIRNAME=`pwd`


find . -name "*.p*" | sort | while read line
do
    FULLFILE=`ls -alh $line|awk '{print $9,$5}'` > /dev/null
    echo        "<li><a target=\"_blank\" href='./TCPIP/lab/${line#./}'>${FULLFILE#./}</a></li>"
done
