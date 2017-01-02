#!/bin/bash



DIRNAME=`pwd`


find . -name "*.p*" |sort| while read line
do
    echo  "<li><a target="_blank" href='./microtheory/${line#./}'>${line#./}</a></li>"
done
