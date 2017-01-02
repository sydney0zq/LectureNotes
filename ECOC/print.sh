#!/bin/bash



DIRNAME=`pwd`


find . -name "*.*" |sort  |  while read line
do
    FULLFILE=`ls -alh "${line}"|awk '{print $9,$5}'` > /dev/null
    echo  "<li><a target='_blank' href='./ECOC/${line#./}'>${FULLFILE#./}</a></li>"
done
