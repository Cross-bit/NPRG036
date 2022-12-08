#!/bin/bash

#set your own path to saxon
saxonJar="$HOME/school/saxon/saxon-he-11.3.jar"
outputDir="$HOME/school/NPRG036/HW3/3/xml/rdf"
xsltDir="$HOME/school/NPRG036/HW3/3/xml/xslt-rdf"
xmlSrcDir="$HOME/school/NPRG036/HW3/3/xml/data"

fileNum=$1

if [ "$#" -eq 0 ]; then
    echo "no file num provided"
fi

if [ ! $saxonJar ]; then 
    echo "invalid path to saxon jar file"
fi

java -jar $saxonJar -xsl:"$xsltDir/toRdf-1.xslt" -s:"$xmlSrcDir/data-$fileNum.xml"  -o:"$outputDir/data-$fileNum.ttl"





