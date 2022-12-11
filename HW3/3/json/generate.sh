#!/bin/bash

#set your own path to saxon
riot="$HOME/school/fukesi/apache-jena-4.6.1/bin/riot"
outputDir="$HOME/school/NPRG036/HW3/3/json/rdf"
jsonldDir="$HOME/school/NPRG036/HW3/3/json/data"

fileNum=$1

if [ "$#" -eq 0 ]; then
    echo "no file num provided"
fi

bash $riot  --nocheck --out=TTL "$jsonldDir/data-$fileNum.jsonld" > "$outputDir/data-$fileNum.ttl"




