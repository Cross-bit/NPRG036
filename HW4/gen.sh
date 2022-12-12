#!/bin/bash

if rdf validate --input-format tabular 4/csv/data.csv-metadata.json; then
	prefs="$({
		cat prefixes.txt | sed -E 's/\s+/:/'
		echo
	} | {
		while read -r ln; do
			echo -n ",$ln"
		done
	} | sed 's/^,//')"
	
	rdf serialize --input-format tabular --output-format turtle --minimal --decode-uri --prefixes ex:http://example.org/vocabulary/ 4/csv/data.csv-metadata.json > 4/rdf/data.ttl
	
	if [ "$#" > 0 ] && [ "$1" = '-c' ]; then
		echo
		cat 4/rdf/data.ttl | sed 's/^/\| /'
	fi
fi