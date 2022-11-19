
// Vybere všechny dvojice lesson1 a lesson2, které se odehrávají ve stejném časovém slotu a mají stejný předmět, vypíše lesson id a jméno předmětu.

MATCH
    (lesson1)-[:TakesTime]->(:TimeSlot)<-[:TakesTime]-(lesson2),
    (lesson1)-[:IsTaught]->(subject:Subject)<-[:IsTaught]-(lesson2)
WHERE
    lesson1.ID < lesson2.ID
RETURN
    lesson1.ID, lesson2.ID, subject.name