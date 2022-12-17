# [HW4](https://jakub.xn--klmek-0sa.com/nprg036-hw4)

- [Nástroj na relační diagramy](https://dbdiagram.io)
- [Standardní prefixy](https://www.w3.org/ns/csvw#introduction)

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

- [ ] **1:** **Rozvrh**
- [ ] **2:** **Hodina** + cizí klíče na *předmět*, *učebnu* a *časový slot*
- [ ] **3:** **Předmět**
- [x] **4:** **Učitel**
- [ ] **5:** **Učebna**
- [ ] **6:** **Časový slot**
- [ ] **7:** **Třída** + cizí klíč na *rozvrh*
- [x] **8:** **Žák**
- [x] **9:** Vazba (cizí klíče) *učeitel* &mdash; *předmět*
- [x] **10:** Vazba (cizí klíče) *třída* &mdash; *učitel*
- [ ] **11:** Vazba (cizí klíče) *hodina* &mdash; *rozvrh*
- [x] **12:** Přezdívky *žáků*

### K vyřešení

- Přidat české názvy sloupců?
