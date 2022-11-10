# Užitečné linky :eyes:
### [HW2](https://jakub.xn--klmek-0sa.com/nprg036-hw2)

- [Linked Open Vocabularies (LOV)](https://lov.linkeddata.es/dataset/lov/)
- [Turtle Validator](http://ttl.summerofcode.be/)
- [RDF Playground](http://rdfplayground.dcc.uchile.cl/)
- [RDF turtle](https://www.w3.org/TR/turtle/)
- [RDF datatypes](https://www.w3.org/TR/xmlschema11-2/#built-in-datatypes)



# ROADMAP

## 1. week (7. - 12. 11.)
### RDF
Tady pojedem podle schématu z minula. Každý má v [tabulce](https://docs.google.com/spreadsheets/d/1uTtLzOIeqEwFoH9TViBvodOqBHcg-YHxN_iq-vWNm84/edit#gid=0) poznamenanou svoji třídu. <br>
Honza už připravil soubor [model.ttl](https://github.com/Cross-bit/NPRG036/blob/main/HW2/model.ttl) pro RDF turtle s začátky přepisů tříd.<br>
(Kdybyste nevěděli jaký slovník použít, tak dejte nějaký komentář a dohodneme to na meetingu)<br>
<br>
Mimoto je ale ještě potřeba vytvořit opět UML(pro výstup covered.svg) diagram s objekty z RDF. 
Vytvořil jsem tedy kopii původníhio diagramu kam tyhlety změny můžete rovnou aplikovat. Kopie diagram je [zde](https://online.visual-paradigm.com/w/tfsyjamu/diagrams/?lightbox=1&highlight=0000ff&edit=https%3A%2F%2Fonline.visual-paradigm.com%2Fw%2Ftfsyjamu%2Fdiagrams%2F%23G1mv44dDUabyuOmuSjimop1BVNR90ZjBAM&editBlankUrl=https%3A%2F%2Fonline.visual-paradigm.com%2Fapp%2Fdiagrams%2F%23diagram%3Aproj%3D0%26vpov%3D16.3%26vpob%3D20220410%26client%3D1%26edit%3D_blank&layers=1&nav=1&title=conceptual_diagram_rdf.vpd&vpov=16.3&vpob=20220410#Uhttps%3A%2F%2Fdrive.google.com%2Fuc%3Fid%3D1mv44dDUabyuOmuSjimop1BVNR90ZjBAM%26export%3Ddownload).<br>
...<br>
**Disclaimer**: Ten software se trochu po stránce sharingu změnil a tak nezaručuji, že pokud nemáte účet autorizovaný přes google, že vám to bude fungovat...<br>
(Kdyby ne, tak to pak případně doplníme najednou dle výsledného model.ttl.)<br>
<br>
Asi to je takové prvoplánově zřejmé, ale pokuste se použávat co nejobecnější slovníky(dcterms, ...). <br> Nebo definujte vlastní, jak bylo na cviku o [RDF](https://docs.google.com/presentation/d/1SUiDAQNzpwzwthzN9ejNV4sxhx_UehH__mMplTNX9q8) (na konci). 
<br>
Celkem fajn na editaci je extension do VS code.
<br>
Potom co definujete třídu a typ, tak je také potřeba vytvořit alespoň 3 instance s daty.


<!-- **Important:**
 
Every attribute used at least once.
At least 3 instances of each association.
At least 4 non-trivial SPARQL queries
At least 4 non-trivial Cypher queries -->

### Fix multilipcitního atributu
Fixnul jsem chybějící atribut... Přijde vám to OK? Nebo máte nějaký lepší nápad?(update jsem provedl všude i v dokumentaci)
<br>**Update chci odevzdat ještě před deadlinem tohohle úkolu.**

### Schůzka dořešení RDF + triplestore
Opět si vyberte časy, které by vám nejvíce vyhovovaly(ideálně bych se pak sešel ve stejný čas i v **week 2**).<br>
:point_right: **[ANKETA](https://doodle.com/meeting/organize/id/b6Xm0pze)** :lollipop: :candy:

Snažte se toho co nejvíc udělat do meetingu, bude to potom kratší a můžeme víc probrat k dalším bodům... 

todo: Je jedno jaký?<br>
**Triplestores:**
- [Apache Jena Fuseki](https://doodle.com/meeting/organize/id/b6Xm0pze)
- [Openlink Virtuoso](http://vos.openlinksw.com/owiki/wiki/VOS/VOSDownload)<br>
[Tutorial od Klímka](https://docs.google.com/presentation/d/1Me_9PDk9HlSFSry2bC_XamVQpheNpJRsqI5PhhrQXhw)


## 2. week (14. - 20. 11.)
Tenhle týden i hezky koresponduje s cvikem na LPG/Cypher, takže se snad dozvíme bližší info jak na to.
### SPARQL queries
Ze zadání: At least 4 non-trivial SPARQL queries (co znamená non-trivial najdete v zadání) <br>
**(4 task)/(4 member) = 1 task/member => Každý napíše jednu.** :)

### LPG – model
Uvidíme podle cvika, jak přesně se to převádí z UML. Buď to udělá jeden člověk, nebo se ještě sejdeme během týdne. (Možná počítejte, že bych to viděl i během week 1, protože to všichni potřebujeme na week 2)

### LPG do cypher
V podstatě to musíme přepsat do RDF cypher. Takže zase bych to udělal podle [tabulky](https://docs.google.com/spreadsheets/d/1uTtLzOIeqEwFoH9TViBvodOqBHcg-YHxN_iq-vWNm84/edit#gid=0).
<br> 

### Cypher
Opět ze zadání: At least 4 non-trivial Cypher queries (co znamená non-trivial najdete v zadání)<br>
=> takže každý si vezme zase jednu.


$$\color{red}{----------------------------------------------------------}$$
<h1 align="center">21. 11. DEADLINE !!!:skull:</h1>
$$\color{red}{----------------------------------------------------------}$$
<h1 align="center">:raised_hands: :raised_hands: :raised_hands:</h1>
