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

## Tabulky

1. **Rozvrh**
2. **Hodina** + cizí klíče na *předmět*, *učebnu* a *časový slot*
3. **Předmět**
4. **Učitel**
5. **Učebna**
6. **Časový slot**
7. **Třída**
8. **Žák** + cizí klíč na *třídu*
9. Vazba (cizí klíče) *učeitel* &harr; *předmět*

### K vyřešení

- Vazba hodina &harr; rozvrh
  - Vážně může hodina patřit do několika rozvrhů? Pokud ano tak na to bude další tabluka (jako 9.).
- Vazba rozvrh &harr; třída
  - Ta kardinaůita je nějaká divná, ale tak jak je to teď by to byl cizí klíč na rozvrh v tabulce třídy.
- Vazba třída &harr; učitel
  - Podle Datových formátů nesmí být nepovinné (klíčové) atributy, takže by to měla být další tabulka. Tady nám to přímo neříkal, takže bychom to mohly dát jako nepovinný cizí klíč na učitele v tabulce třídy.