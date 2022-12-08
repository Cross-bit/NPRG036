#!/bin/bash

location="$HOME/school/NPRG036/HW3/3/xml/rdf"
output="./rdf-merged.ttl"

rm -rf $output

for file in "$location/*"
do
   cat $file >> $output
done

cat $output





