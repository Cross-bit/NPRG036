// Vybere všechny dvojice hodin, které se odehrávají ve stejné časovém slotu a mají stejný předmět.
// Vypíše identifikátory lesson1, lesson2 a jméno předmětu.

MATCH
	(lesson1)-[:TakesTime]->(:TimeSlot)<-[:TakesTime]-(lesson2),
	(lesson1)-[:IsTaught]->(subject:Subject)<-[:IsTaught]-(lesson2)
WHERE
	lesson1.ID < lesson2.ID
RETURN
	lesson1.ID AS `Lesson1 ID`, lesson2.ID AS `Lesson2 ID`, subject.name AS `Subject name`