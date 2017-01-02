#!/bin/bash



DIRNAME=`pwd`


find . -name "*.p*" | while read line
do
    echo  "<li><a target="_blank" href='./microtheory/exams/${line#./}'>${line#./}</a></li>"
done
