#!/bin/bash

getPrefs() {
	{
		cat prefixes.txt | sed -E "s/\s+/$2/"
		echo
	} | {
		while read -r ln; do
			echo -n "$1$ln$3"
		done
	}
}

if rdf validate --input-format tabular 4/csv/data.csv-metadata.json; then
	
	rdf serialize --input-format tabular --output-format turtle --minimal --decode-uri --prefixes "$(getPrefs ',' ':' '' | sed 's/^,//')" 4/csv/data.csv-metadata.json > 4/rdf/data.ttl
	
	if [ "$#" -gt 0 ] && [ "$1" = '-c' ]; then
		echo
		cat 4/rdf/data.ttl | sed 's/^/\| /'
	fi
fi