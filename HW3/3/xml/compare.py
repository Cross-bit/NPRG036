import os
import subprocess
from rdflib import Graph
from rdflib.compare import *

mergeRdfs = True

HOME = os.getenv('HOME')

# nastavete si svoje cesty...
original_rdf_path = HOME + "/school/NPRG036/HW2/2/rdf/data/data.ttl"
merged_rdf_path = HOME + "/school/NPRG036/HW3/3/xml/rdf-merged.ttl" #rdf-merged
#merged_rdf_path = HOME + "/school/NPRG036/HW3/TOBEDONE.ttl"

if mergeRdfs:
    command = 'bash merge.sh'
    process = subprocess.Popen(command.split(), stdout=subprocess.PIPE)
    output, error = process.communicate()


original_g = Graph()
original_g.parse(original_rdf_path)

merged_g = Graph()
merged_g.parse(merged_rdf_path)


# launch smart algorithm
original_iso = to_isomorphic(original_g)
merged_iso = to_isomorphic(merged_g)

if original_iso == merged_iso:
    print("OK")
else:
    (both, original, merged) = graph_diff(original_g, merged_g)
    print("Missing tripples:")
    for s, p, o in original:
        print(s, p, o)
    print("Useless tripples:")
    for s, p, o in merged:
        print(s, p, o)
