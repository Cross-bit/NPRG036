# [HW4](https://jakub.xn--klmek-0sa.com/nprg036-hw4)

## Skripty (bash/ubuntu)

```
sudo ./install.sh
```

Nainstaluje Ruby a konvertor/validátor.

```
./gen.sh [-c]
```

Zvaliduje a vygeneruje. `-c` taky vypíše RDF.

**Prefixy se musí specifikovat v `prefixes.txt`**

## CSV jsonld schema notes

Pozor na celková URI v JSONld! Je potřeba uvést celé iri, ne jen prefixované...