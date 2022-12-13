# [HW4](https://jakub.xn--klmek-0sa.com/nprg036-hw4)

## Instrukce

- Deskriptory tabulek pište do souborů ve složce `metadata`.
- Vlastní prefixy pište do `prefixes.txt`.
- **JSON-LD deskriptory obecně nepodporují definice vlastních prefixů**, ale spojovací skript v textu nahradí ty definované v `prefixes.txt`.

## Skripty (bash/ubuntu)

```
sudo ./install.sh
```

Nainstaluje Ruby a konvertor/validátor.

```
./gen.sh [-c]
```

Spojí deskriptory, nahradí prefixy a zvaliduje a vygeneruje. `-c` taky vypíše RDF.

**Prefixy se musí specifikovat v `prefixes.txt`**

## CSV jsonld schema notes

~~Pozor na celková URI v JSONld! Je potřeba uvést celé iri, ne jen prefixované...~~