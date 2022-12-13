#!/bin/bash


metafile='4/csv/data.csv-metadata.json'

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

{
	cat 'data.csv-metadata.json-prefix'
	sep=''
	for td in metadata/*; do
		echo "$sep"
		sep=','
		cat "$td" | sed "s/^/\t\t/$(getPrefs ';s,"' ':,"' ',')"
	done
	echo
	cat 'data.csv-metadata.json-suffix'
} > "$metafile"

if rdf validate --input-format tabular "$metafile"; then
	rdf serialize --input-format tabular --output-format turtle --minimal --decode-uri --prefixes "$(getPrefs ',' ':' '' | sed 's/^,//')" "$metafile" > 4/rdf/data.ttl
	
	if [ "$#" -gt 0 ] && [ "$1" = '-c' ]; then
		echo
		cat 4/rdf/data.ttl | sed 's/^/\| /'
	fi
fi