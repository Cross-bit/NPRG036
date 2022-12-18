import os
import subprocess
from rdflib import Graph
from rdflib.compare import *

HOME = os.getenv('HOME')

# nastavete si svoje cesty... HOME + "/school/NPRG036/HW2/2/rdf/data/data.ttl"
original_rdf_path = HOME + "/school/NPRG036/HW2/2/rdf/data/data.ttl"
merged_rdf_path = HOME + "/school/NPRG036/HW4/4/rdf/data.ttl" #rdf-merged
#merged_rdf_path = HOME + "/school/NPRG036/HW3/TOBEDONE.ttl"

original_g = Graph()
original_g.parse(original_rdf_path)

jsonld_g = Graph()
jsonld_g.parse(merged_rdf_path)


# launch smart algorithm
original_iso = to_isomorphic(original_g)
merged_iso = to_isomorphic(jsonld_g)

if original_iso == merged_iso:
    print("OK")
else:
    (both, original, jsonld) = graph_diff(original_g, jsonld_g)
    print("Missing tripples:")
    for s, p, o in original:
        print(s, p, o)
    print("Useless tripples:")
    for s, p, o in jsonld:
        print(s, p, o)
